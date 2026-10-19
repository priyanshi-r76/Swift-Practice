import UIKit

var greeting = "Hello, playground"
var greeting2 = " I'm Priyanshi Rawat"

var aboutMe = """
I'm a 20 year old student at Graphic Era University majoring in Computer Science.
"""
print(greeting)
print(greeting2)
print(aboutMe)
print("\"HI\"")

if greeting2.isEmpty {
    print("True")
}else {
    print("false")
}
var a = "w"
var b:Character = "a"

var myGreetings = greeting+greeting2
print(myGreetings)

var name="Priyanshi"
var age:Int = 20
print("Hi I am \(name) and I am \(age) years old")

age = 21

print("Hi I am \(name) and I am \(age) years old")

var num1 = 10
var num2 = 20
print("sum = \(num1+num2)")
print("diff = \(num1-num2)")
print("multiplication = \(num1*num2)")
print("division = \(num2/num1)")

var monthName1 = "Jan"
var monthname2 = "Feb"

if monthName1 == monthname2 {
    print("Same")
}
if monthName1.uppercased() == monthname2.uppercased() {
    print("Same")
}
if monthName1 != monthname2 {
    print("Diffrent")
}
if monthName1.uppercased() != monthname2.uppercased() {
    print("Different")
}

var compString1 = "Graphic Era"
var compString2 = "I'm a student"

print(compString1.hasPrefix("Graphic"))

print(compString1.hasSuffix("Era"))

print(compString1.count)

var char = "a"

switch char {
case "a","e","i","o","u":
    print("vowel")
default:
    print("consonent")
}

print("😀")
