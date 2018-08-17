// cerner_2^5_2017
// solving https://projecteuler.net/problem=32 using golang and brute force
package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	const pandigital = "123456789"
	var products []int
	var sum = 0
	for x := 1; x < 4321; x++ {
		for y := x; y > 0; y-- {
			var str = sortString(fmt.Sprintf("%v%v%v", x, y, x*y))
			var index = sort.SearchInts(products, x*y)
			if strings.Compare(str, pandigital) == 0 && (index == len(products) || products[index] != x*y) {
				products = append(products, x*y)
				sort.Ints(products)
				sum += (x * y)
			}
		}
	}
	fmt.Printf("Answer for Problem 32: %v", sum)
}

func sortString(str string) string {
	var strSlice = strings.Split(str, "")
	sort.Strings(strSlice)
	return strings.Join(strSlice, "")
}
