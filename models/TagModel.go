package models

import (
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego"
)

type Tag struct {
	Id       int
	Article *Article `orm:"rel(fk)"`
	Name     string
	Count    int
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


func ListTags() {
	tags := []Tag{}
	qs := orm.NewOrm().QueryTable("tb_tag").OrderBy("-Article__Id").RelatedSel()
    cnt, err := qs.All(&tags)
    if err == nil {
       beego.Info("Queried", cnt, "tags")
        for _, tag := range tags {
            beego.Info(tag.Article)
        }
    }

}

