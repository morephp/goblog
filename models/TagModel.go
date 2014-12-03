package models

import (
	// "github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego/utils/pagination"
)

type Tag struct {
	Id      int
	Article []*Article `orm:"rel(m2m)"`
	Name    string
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Tag))
}

func (this *Tag) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(this)
}

func (this *Tag) Insert() error {
	if _, err := orm.NewOrm().Insert(this); err != nil {
		return err
	}
	return nil
}

func (this *Tag) Delete() error {
	if _, err := orm.NewOrm().Delete(this); err != nil {
		return err
	}
	return nil
}

func (this *Tag) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Tag) Read(fields ...string) error {
	if err := orm.NewOrm().Read(this, fields...); err != nil {
		return err
	}
	return nil
}

func ListTags(ctx *context.Context) *[]Tag {
	tags := []Tag{}
	tag := Tag{}
	totalNum, _ := tag.Query().Count()
	postsPerPage := 10
	paginator := pagination.SetPaginator(ctx, postsPerPage, totalNum)
	tag.Query().Limit(postsPerPage, paginator.Offset()).OrderBy("-Id").All(&tags)
	return &tags
}
