package models

import (
	"github.com/astaxie/beego/orm"
)

type Attach struct {
	Id          int64
	AriticleId  int64
	AttachImage string `orm:"size(100)"`
	Time        int64
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Attach))
}

func (this *Attach) Insert() error {
	if _, err := orm.NewOrm().Insert(this); err != nil {
		return err
	}
	return nil
}

func (this *Attach) Read(fields ...string) error {
	if err := orm.NewOrm().Read(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Attach) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *Attach) Delete() error {
	if _, err := orm.NewOrm().Delete(this); err != nil {
		return err
	}
	return nil
}

func (this *Attach) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(this)
}
