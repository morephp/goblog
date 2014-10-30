package init

import (
	"fmt"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

var Config = beego.AppConfig

func init() {
	dbUser := Config.String("db_user")
	dbPass := Config.String("db_pass")
	dbHost := Config.String("db_host")
	dbPort := Config.String("db_port")
	dbName := Config.String("db_name")
	maxIdleConn, _ := Config.Int("db_max_idle_conn")
	maxOpenConn, _ := Config.Int("db_max_open_conn")

	dbLinker := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?charset=utf8", dbUser, dbPass, dbHost, dbPort, dbName) + "&loc=Asia%2FChongqing"
	orm.RegisterDriver("mysql", orm.DR_MySQL)
	orm.RegisterDataBase("default", "mysql", dbLinker, maxIdleConn, maxOpenConn)
}
