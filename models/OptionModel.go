package models

import (
	"github.com/astaxie/beego/orm"
)

type Option struct {
	Id          int
	WebsiteName string `orm:"size(100)"`
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Option))
}

func (this *Option) Read(fields ...string) error {
	if err := orm.NewOrm().Read(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Option) Delete() error {

	if _, err := orm.NewOrm().Delete(this); err != nil {

		return err
	}
	return nil
}

func (this *Option) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Option) Insert(fields ...string) error {
	if _, err := orm.NewOrm().Insert(this); err != nil {
		return err
	}
	return nil
}

func (this *Option) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(this)
}
