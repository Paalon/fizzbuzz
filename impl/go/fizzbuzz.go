package main

import (
	"bufio"
	"bytes"
	"fmt"
	"os"
	"strconv"
)

func Word(n int) string {
	isFizz := n%3 == 0
	isBuzz := n%5 == 0
	if isFizz && isBuzz {
		return "fizz buzz"
	} else if isFizz {
		return "fizz"
	} else if isBuzz {
		return "buzz"
	} else {
		return strconv.Itoa(n)
	}
}

func Say(n int) {
	fmt.Println(Word(n))
}

func Play(n int) {
	for i := 1; i <= n; i++ {
		Say(i)
	}
}

func ReadString() string {
	reader := bufio.NewReader(os.Stdin)
	buffer := new(bytes.Buffer)
	buffer.ReadFrom(reader)
	return buffer.String()
}

func ReadInteger() (int, error) {
	str := ReadString()
	n, err := strconv.Atoi(str)
	return n, err
}

func main() {
	if n, err := ReadInteger(); err != nil {
		fmt.Println("error")
		os.Exit(1)
	} else {
		Play(n)
	}
}
