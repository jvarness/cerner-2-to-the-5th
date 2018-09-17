package main

import (
	"fmt"
	"strings"
	"os"
)
// cerner_2^5_2018
func main() {
	if len(os.Args) < 2 {
		fmt.Println("Fine. Be that way!")
	} else {
		arg := strings.Trim(strings.Join(os.Args[1:], ""), " ")
		isUpper := strings.ToUpper(arg) == arg
		isQuestion := arg[len(arg) - 1] == '?'
		if len(arg) < 1 {
			fmt.Println("Fine. Be that way!")
		} else if isUpper && isQuestion {
			fmt.Println("Calm down, I know what I'm doing!")
		} else if isUpper {
			fmt.Println("Whoa, chill out!")
		} else if isQuestion {
			fmt.Println("Sure.")
		} else {
			fmt.Println("Whatever.")
		}
	}
}