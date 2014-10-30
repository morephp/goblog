package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
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
