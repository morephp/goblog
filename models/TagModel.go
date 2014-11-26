package models

import (
	"github.com/astaxie/beego/orm"
)

type Tag struct {
	Id       int64
	Name     string
	Count    int
	Articles []*Article `orm:"rel(m2m)"`
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
