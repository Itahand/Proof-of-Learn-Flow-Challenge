package main

import (
	"fmt"

	. "github.com/bjartek/overflow"
	"github.com/fatih/color"
)

func main() {

	o := Overflow(

		WithGlobalPrintOptions(),
	)

	fmt.Println("Testing Challenge for Proof of Learn application")
	fmt.Println("Press any key to continue")
	fmt.Scanln()

	color.Red("The Total number of structs in the array should be Zero(0) before transaction")
	o.Script("./Challenge1/fetchArray")
	color.Green("-----------------------------PASSED---------------------")
	o.Tx("/Challenge1/addToArray", WithSigner("account"))
	color.Red("The Total number of structs in the array should be One(1) before transaction")
	o.Script("./Challenge1/fetchArray")
	color.Green("-----------------------------PASSED---------------------")
}
