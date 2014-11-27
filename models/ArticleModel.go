package models

import (
	// "github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego/utils/pagination"
	"strings"
	"time"
)

type Article struct {
	Id       int64
	Title    string `orm:"size(100)"`
	Content  string `orm:"type(text)"`
	Author   string `orm:size(16)`
	Times    int64
	PushTime time.Time `orm:"auto_now_add;type(datetime)"`
	Tags     []*Tag    `orm:"rel(m2m)"`
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Article))
}

func (this *Article) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(this)
}

func (this *Article) Insert() error {
	if _, err := orm.NewOrm().Insert(this); err != nil {
		return err
	}
	return nil
}

func (this *Article) Delete() error {
	if _, err := orm.NewOrm().Delete(this); err != nil {
		return err
	}
	return nil
}

func (this *Article) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Article) Read(fields ...string) error {
	if err := orm.NewOrm().Read(this, fields...); err != nil {
		return err
	}
	return nil
}

/**
 *  add article Controller
 */
func AddArticle(article *Article, param string) error {
	if err := article.Insert(); err != nil {
		return err
	}
	tag := Tag{}
	tags := strings.Split(param, ",")
	for _, v := range tags {
		tag.Name = v
		tag.Count = 1
		tag.Insert()
		orm.NewOrm().QueryM2M(article, "Tags").Add(&tag)
	}
	return nil
}

func ListArticle(ctx *context.Context) *[]Article {
	article := Article{}
	articles := []Article{}
	totalNum, _ := article.Query().Count()
	postsPerPage := 1
	paginator := pagination.SetPaginator(ctx, postsPerPage, totalNum)
	article.Query().Limit(postsPerPage, paginator.Offset()).OrderBy("-Id").All(&articles)

	for _, article := range articles {
		orm.NewOrm().LoadRelated(&article, "Tags")
	}
	return &articles
}
