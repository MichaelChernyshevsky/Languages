// name current package
package main

import (
	"errors"
	"fmt"
	"log"
	"reflect"
)

func init(){
	print("initialize")
}

func vars() {
	fmt.Println("some_1")
	// ----------------------------------//
	variable_1 := "some_2"
	fmt.Println(variable_1)
	variable_1 = "some_3"
	fmt.Println(variable_1)
	// ----------------------------------//
	var variable_2 string
	variable_2 = "some_4"
	fmt.Println(variable_2)
	// ----------------------------------//
	var variable_3 = "some_5"
	fmt.Println(variable_3)
	// ----------------------------------//
	var variable_4 = 1
	fmt.Println(reflect.TypeOf(variable_4))
	// ----------------------------------//
	var variable_5 float32
	variable_5 = 3.2
	fmt.Println(variable_5)
	// ----------------------------------//
	variable_6 := []byte("some")
	fmt.Println(variable_6)
	// ----------------------------------//
	var a byte = 64
	fmt.Println(a)
	// ----------------------------------//
	var a_2 rune = 'a'
	fmt.Println(a_2)
}

func hooks() {
	variable_7, variable_8 := 1, 2
	fmt.Println(variable_7, variable_8)
	variable_8, _ = variable_7, 2
	fmt.Println(variable_7, variable_8)

}

func print(message string) {
	fmt.Println(message)
}

func getText() string {
	return "message"
}

func changePlace(first string, second int) (int, string) {
	return second, first
}

func function() {
	message := getText()
	print(message)

}

func text() {
	number := 1
	str := "string"

	print(fmt.Sprintf("message %d, str %s", number, str))

	first, second := changePlace("fisrt", 2)
	fmt.Println(first, second)
}

func operators(number int) {
	if number >= 0 {
		print("+")
		if number == 0 {
			print("zero")
		} else if number > 0 {
			print("big")
		} else {
			print("small")
		}
	} else {
		print("-")
	}
}

func err(err bool) error {
	if err {

		return errors.New("error")
	}
	return nil
}

func error_test(err error) {
	if err != nil {
		log.Fatal(err)
	}
}

func switchCase(day string){
	switch day {
		case "пн":
			print("1")
		case "вт":
			print("2")
		case "ср":
			print("3")
		case "чт":
			print("4")
		case "пт":
			print("5")
		case "сб":
			print("6")
		default:
			print("-")
	}
}

func countElements(numbers ...int) {
	if len(numbers) != 0 {
		count := numbers[0]
		for _,i := range numbers {
			count += i
		}
		fmt.Println(count)
	}
}

func increment() func() int {
	count := 0 
	return func() int {
		count++
		return count
	}
}


func pintMes(message *string){
	*message += "new"
}
func referencesAndPointers(){
	// & - link
	// * - pointers
	message:= "message"
	print(message)
	pintMes(&message)
	print(message)

	
}

func printArr(arr [3]string){
	print("success")
}

func array(){
	arr := [3]int{
		1,2,3
	}
	printArr(arr)
}

func slice(){
	slice := []int{
		1,2,3
	}
	slice_2 := make([]string,5,15)
	//len - 5
	//car - 15 - емкость
}

func for(){
	for x:=0; x<10; x++{

	}
}

func pani(){
	// последним выполнить
	defer array()
	// ошибка с сообщением
	panic("success")
}



func main() {
	// vars()
	// print("// ----------------------------------//")
	// hooks()
	// print("// ----------------------------------//")
	// function()
	// print("// ----------------------------------//")
	// text()
	// print("// ----------------------------------//")
	// operators(10)
	// print("// ----------------------------------//")
	// error_test(err(true))
	// print("// ----------------------------------//")
	// switchCase("пн")
	// print("// ----------------------------------//")
	// countElements(1,1,1,1,1,1,2,2,3,2,2,2,100)
	// print("// ----------------------------------//")
	// inc1 := increment()
	// inc2 := increment()
	// inc3 := increment()
	// print(fmt.Sprintf(" %d ,  %d,  %d", inc1, inc2, inc3))
	// print("// ----------------------------------//")
	// func()  {
	// 	print("12313")
	// } ()
	// print("// ----------------------------------//")
	// print("// ----------------------------------//")
	// referencesAndPointers()
	print("// ----------------------------------//")
	array()
	slice()
	print("// ----------------------------------//")
	print("// ----------------------------------//")
	print("// ----------------------------------//")
	print("// ----------------------------------//")
	print("// ----------------------------------//")


}
