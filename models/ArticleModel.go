package models

import (
	"github.com/astaxie/beego/orm"
	"time"
)

type Article struct {
	Id       int64
	Title    string `orm:"size(100)"`
	Category string `orm:"size(100)"`
	Content  string `orm:"type(text)"`
	Author   string `orm:size(16)`
	Times    int64
	PushTime time.Time `orm:"auto_now_add;type(datetime)"`
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
