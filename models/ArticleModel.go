package models

import (
	"fmt"
	"github.com/astaxie/beego/orm"
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
	Tags     []*Tag    `orm:"reverse(many)"`
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
 * Controller add article
 */
func AddArticle(article *Article, tag *Tag) error {
	if err := article.Insert(); err != nil {
		return err
	}
	tags := strings.Split(tag.Name, ",")
	for _, v := range tags {
		query := tag.Query().Filter("Name", v)
		if query.Exist() {
			query.Update(orm.Params{"count": orm.ColValue(orm.Col_Add, 1)})
			query.One(tag)
		} else {
			tag.Name = v
			tag.Count = 1
			err := tag.Insert()
			fmt.Println(err)
		}
	}
	return nil
}
