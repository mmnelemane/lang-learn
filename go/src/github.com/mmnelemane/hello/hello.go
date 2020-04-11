package main

import (
	"fmt"
	"github.com/mmnelemane/string"
)

func main() {
	var name, location = "Peter Schnagl", "Nuremberg"
	age := 36
	fmt.Printf("%s (%d) of %s", name, age, location)
	fmt.Println(string.ReverseString(name))
}
