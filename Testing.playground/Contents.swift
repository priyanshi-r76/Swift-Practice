import UIKit

var greeting = "Hello, playground"
let name = "priyanshi"

var full_name = "priyanshi"

full_name = "priyanshi rawat"

let defaultScore = 100
var playerOneScore = defaultScore
var playerTwoScore = defaultScore

print(playerOneScore)
print(playerTwoScore)

playerOneScore = 1000
print(playerOneScore)

struct Person{
    let firstName: String
    let lastName:  String
    
    func sayHello(){
        print("Hello World. My name is \(firstName) \(lastName).")
    }
}

let aperson = Person(firstName: "Priyanshi", lastName: "Rawat")
let anotherperson = Person(firstName: "Mina", lastName: "Joshi")

aperson.sayHello()
anotherperson.sayHello()


print("05, Aug")

let temp: Int = 100
if temp >= 100 {
    print("The water is boiling.")
}else {
    print("Not Boiling.")
}

print("Boolean")

let number = 1000
let isSmaller = number < 100
print(isSmaller)

let speedLimit = 65
let currentSpeed = 70
let isSpeeding = currentSpeed > speedLimit
print(isSpeeding)

var isSnowing = false
if !isSnowing {
    print("not snowing")
}


let numberOfWheels = 2
switch numberOfWheels {
case 0:
    print("Number of Wheels = 0")
case 1:
    print("Number of Wheels = 1")
case 2:
    print("Number of Wheels = 2")
case 3:
    print("Number of Wheels = 3")
default:
    print("Number of Wheels = \(numberOfWheels)")
}

let temp2: Int = 70
switch temp2 {
case 0...64:
    print("Low temp")
case 65...75:
    print("Just right temp.")
case 76...100:
    print("High temp")
default:
    print("not in range")
}


print("11 Aug")

func displayPi()
{
    print("3.141")
}
displayPi()

func triple(value: Int)
{
    print(value * 3)
}
triple(value: 5)

func multiply(numberOne : Int, numberTwo : Int) -> Int
{
    let result = numberOne * numberTwo
    return result
}
print(multiply(numberOne: 5, numberTwo: 5))



func divide(numberOne : Int, numberTwo : Int) -> Int
{
    numberOne / numberTwo
}
print(divide(numberOne: 10, numberTwo: 2))

//Argument Lable

func sayHello(to personOne : String, and personTwo : String){
    print("hello \(personOne) and \(personTwo)")
}
sayHello(to: "Priyanshi", and: "Mina")

func add(_ first: Int,_ second: Int) -> Int {
    first + second
}
let result = add(5, 5)
print(result)

print("17th Aug")
print("Structure")

struct Person1 {
    var name: String
    
    func sayHello(){
        print("greeting to \(name)")
    }
}
let person = Person1(name: "Priyanshi")
print(person.name)
person.sayHello();


struct Point {
    var x : Double
    var y : Double
}
let point1 = Point(x: 10, y: 20)
var point2 = point1
point2.y = 100
print(point2.x,point2.y)
print(point1.x,point1.y)


struct Odometer {
    var count : Int = 0
    
    mutating func increment(){
        count += 1
    }
}
var odometer = Odometer()
print(odometer.count)

odometer.increment();

print(odometer.count)

let counter = Odometer(count:27000)
print(odometer.count)

struct BankAccount {
    var accountNumber: Int
    var balance: Double = 0
}
let newAccount = BankAccount(accountNumber: 123, balance: 0)
let transferedAccount = BankAccount(accountNumber : 167)

print(newAccount.accountNumber,newAccount.balance)
 

struct Temprature {
    var celsius: Double
    
    init(celsius: Double) {
        self.celsius = celsius
    }
    init(ferenite: Double){
        celsius = (ferenite-32)/1.8
    }
    init(kelvin: Double){
        celsius = 273 - kelvin
    }
}

let currentTemprature = Temprature(celsius: 25)
let boiling = Temprature(ferenite: 222)

print(currentTemprature.celsius)
print(boiling.celsius)

print("19th August")
print("Classes and Inheritansce")

class Dog {
    var name : String
    var age : Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func bark() {
        print("woof!")
    }
}
var myDog = Dog(name: "Buddy", age: 3)
myDog.bark()
print(myDog.name)
print(myDog.age)


class Dog1 {
    var name = "Unknown"
    var age = 0
}


struct People{
    var name: String
}

var people1 = People(name: "Priyanshi")
var people2 = people1

people2.name = "Riya"

print(people1.name)
print(people2.name)

class Human {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}
var p1 = Human(name: "Priyanshi")
var p2 = p1

p2.name = "Riya"

print(p1.name)
print(p2.name)//classes share reference
//both will print Riya


class Vehical{
    var currentSpeed = 0.0//stored property
    
    var description: String{ // computed property- it depends on stored property(here currentSpeed)
        "\(currentSpeed) miles per hour "
    }
    
    func makeNoice() {
        
    }
}

class Bicycle: Vehical {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
print(bicycle.hasBasket)

bicycle.currentSpeed = 15.0
print("Bicycle: Speed is \(bicycle.description)")
/*
 types of classes:
 1. base class
 2. derived classes
 */

class Tandem: Bicycle {
    var numberOfPassenger = 0
}

let tandem = Tandem()
tandem.numberOfPassenger = 3

print(tandem.numberOfPassenger)

tandem.hasBasket = true
print("Tandem: hasBasket: \(tandem.hasBasket)")

tandem.currentSpeed = 22.0
print("Tandem: Speed is \(tandem.description)")

//overriding method and property

class Train: Vehical {
    override func makeNoice() {
        print("Choo Choo!!")
    }
    
}
var train = Train()
train.makeNoice()

class Car: Vehical {
    var gear = 3
    override var description : String {
        super.description + "in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 30.0
car.gear = 5
print("\(car.description)")


class Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
class Student: Person2 {
    var subjects: String
    
    init(name: String, age: Int, subjects: String) {
        self.subjects = subjects
        super.init(name: name, age: age)
    }
}

print("Array")
print("August 20th")

var students = ["Amit", "jack", "Rahul"]
var fruits: [String] = []
var cars: Array<String> = ["Audi", "BMW"]
var numbers = [Int]()

print(students.count)
print(students)

//append

students.append("Aman")
print(students)

students.append("Raj")
// remove



let array1 = [1, 3, 2, 9]
let array2 = [6, 4, 8, 7]

let array3 = array1 + array2
print(array3)

let array4 = [array1, array2]

print(array4)

print(array4.count)

print(array4[1][1])

for a in array4 {
    print(a)
}

//Sets

let mySet: Set = [ 1,1,1,3,4,5,6,7]
print(mySet)

let name1: Set<String> = ["A", "B", "C", "D", "E", "F", "A", "S", "E"]
print(name1)

let set1: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let set2: Set = [11,12,13,14,15,16,17,118,19,20]
let union: Set = set1.union(set2)
print(union)
let intersection: Set = set1.intersection(set2)

print(intersection)

let difference: Set = set1.symmetricDifference(set2)
print(difference)

let substract: Set = set1.subtracting(set2)
print(substract)


//Dictionary

//var dictionary: Dictionary<String: Int>()
var studentGrade: [String: Double] = ["Priyanshi": 100, "Jasmine": 89, "Mini": 79]
print(studentGrade["Raj"])
if let value = studentGrade["Mini"] {
    print(value)
}
else{
    print("No name")
}
studentGrade["Raj"] = 78
studentGrade["Fin"] = 89
print(studentGrade)

studentGrade.removeValue(forKey: "Raj")
print(studentGrade)
let oldValue = studentGrade.updateValue(67.0, forKey:"Fin")
print(studentGrade)
print(oldValue)


print("Loops")
print("21st August")

//For Loop

for i in 1...3 {
    print(i)
}

for _ in 1...3 {
    print("Hello")
}

let names = ["Priyanshi", "Satashi", "Adya"]
for name in names {
    print("Hello \(name)")
}

for i in 0...9 {
    if i%2 == 0 {
        print(i)
    }
}

for i in -9...9 {
    if i<0 {
        print(i)
        continue;
    }
    else {
        break;
    }
}

for (index, letter) in "Swift".enumerated() {
    print("\(index+1):\(letter)")
}

//while loop

var i = 0
while i<5 {
    print("Hello World")
    i += 1
}


var numberOfLife = 3
var stillALive = true

while stillALive {
    print("I still have \(numberOfLife) lives.")
    numberOfLife -= 1
    if numberOfLife == 0 {
        stillALive = false
    }
}


//repeat while

var j = 0
repeat {
    print("Hello World")
    j += 1
} while j<5
            
            
/*initialize two array, one with string and other with bool,print the string along with there index, depending on the bool value print the output
*/

var students1: [String] = ["Priyanshi","Adya","Aanya"]
var attendence: [Bool] = [ true, true, false]

for (index, student) in students1.enumerated() {
    if attendence[index] {
        print("\(student) is present.")
    }
    else{
        print("\(student) is absent.")
    }
}

print("Optionals")
print("25th August")

//
var name3: String? = nil
if let myName = name3 {
    print(myName)
}else{
    print("No Name")
}
//guard
func checkName() {
    let name3: String? = "Alice"
    guard let MyName = name3 else {
        print("No name")
        return
    }
    print(MyName)
}
//Nil collasin

let myName2 = name ?? "Anonymous"
print(myName2)


let enteredName: String? = nil
let displayedName = enteredName ?? "Guest"

print("welcome \(displayedName)")

let number1: Int? = 100
let number2 = number1
print(number2)

//Guard

func processBook(title: String?, price: Double?, pages: Int?) {
    guard let theTitle = title,
          let thePrice = price,
          let thePages = pages else {
        return
    }
    print("\(theTitle) cost $\(thePrice) and has \(thePages) pages.")
}
processBook(title: "1985", price: 50, pages: 200)


func singHappyBirthday() {
    
    let birthdayIsToday: Bool = true
    let invitedGuests: [String] = ["Priya", "Adya"]
    let cakeCandlesLit: Bool = true
    
    guard birthdayIsToday else{
        print("No one has a birthday today")
        return
    }
    
    guard !invitedGuests.isEmpty else {
        print("It's just a family party")
        return
    }
    
    guard cakeCandlesLit else {
        print("The cake's candles haven't been lit.")
        return
    }
    
    print("Happie Birthday to you!")
}
singHappyBirthday()


