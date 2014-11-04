package library

import (
	"crypto/md5"
	"encoding/hex"
)

func EncodeMd5(md5s string) string {
	h := md5.New()
	h.Write([]byte(md5s))
	return hex.EncodeToString(h.Sum(nil))
}
