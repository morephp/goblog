package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
	"time"
)

type Article struct {
	Id       int64
	Title    string `orm:"size(100)"`
	Category string `orm:"size(100)"`
	Content  string `orm:"type(text)"`
	Times    int64
	PushTime time.Time `orm:"auto_now_add;type(datetime)"`
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(Article))
}
