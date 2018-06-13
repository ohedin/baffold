package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		fmt.Println("Hello GO !!")
		time.Sleep(time.Second * 1)
	}
}
