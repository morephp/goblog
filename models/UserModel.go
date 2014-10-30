package models

import (
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type User struct {
	Id       int64
	Username string `orm:"size(10)"`
	Password string `orm:"size(32)"`
	Nickname string `orm:"size(16)"`
}

func init() {
	orm.RegisterModelWithPrefix("tb_", new(User))
}

func AddUser(u *User) (int64, error) {
	o := orm.NewOrm()
	user := new(User)
	user.Username = u.Username
	user.Password = u.Password
	user.Nickname = u.Nickname

	id, err := o.Insert(user)
	return id, err
}
