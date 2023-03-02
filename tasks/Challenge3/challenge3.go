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

	fmt.Println("Testing Challenge 3 for Proof of Learn application")
	fmt.Println("Press any key to continue")
	fmt.Scanln()

	color.Red("Setup Alice's account to receive the CryptoDudes NFTs")
	o.Tx("./Challenge3/setupAccount", WithSigner("alice"))
	color.Green("-----------------------------PASSED---------------------")
	o.Tx("/Challenge3/mintNFT", WithSigner("account"), WithArg("recipient", "alice"))
	color.Green("-----------------------------PASSED---------------------")
	color.Red("Should be able to read CryptoDudes Metadata inside Alice's account")
	o.Script("./Challenge3/readNFT", WithArg("address", "alice"), WithArg("id", "36"))
	color.Green("-----------------------------PASSED---------------------")
}
