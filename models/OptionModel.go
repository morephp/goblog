package models

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type Option struct {
	Id          int
	WebsiteName string `orm:"size(100)"`
}

func GetWebsiteName() string {
	o := orm.NewOrm()
	op := Option{
		Id: 1,
	}
	if err := o.Read(&op); err != nil {
		beego.Error(err)
	}
	return op.WebsiteName
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Option))
}
