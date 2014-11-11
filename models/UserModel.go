package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type User struct {
	Id         int64
	Username   string    `orm:"unique;size(10)"`
	Password   string    `orm:"size(32)"`
	Nickname   string    `orm:"size(16)"`
	Email      string    `orm:"size(50)"`
	Lastlogin  time.Time `orm:"auto_now_add;type(datetime)"`
	Lastip     string    `orm:"size(32)"`
	Logincount int64
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(User))
}

func (this *User) Insert() error {
	if _, err := orm.NewOrm().Insert(this); err != nil {
		return err
	}
	return nil
}

func (this *User) Read(fields ...string) error {
	if err := orm.NewOrm().Read(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *User) Update(fields ...string) error {
	if _, err := orm.NewOrm().Update(this, fields...); err != nil {
		return err
	}
	return nil
}

func (this *User) Delete() error {
	if _, err := orm.NewOrm().Delete(this); err != nil {
		return err
	}
	return nil
}

func (this *User) Query() orm.QuerySeter {
	return orm.NewOrm().QueryTable(this)
}
