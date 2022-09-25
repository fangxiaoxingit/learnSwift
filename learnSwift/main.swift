//
//  main.swift
//  learnSwift
//
//  Created by 方小新 on 2022/9/20.
//

import Foundation

print("Hello, World!")
print("hello Swift")
print("早")
    //注释代码
    /*
 多行注释
 多行注释
 多行注释
 */
print("早")

var name = "Amy"
var otherName = "Tom"
print(name)
name = otherName + name
print(name)

let num: Int = 3
let zero:Int = 0
var review:Int = -5
review = zero
print(Int.max)
print(Int.min)
print("------------------------")
//浮点数
let pi:Double = 3.1415
print(pi)
print("------------------------")
//字符串，类型注释
let poem: String = "To be \n\\tor not to be."
print(poem)
let emtpy:String = ""
print(emtpy)
print(emtpy.count)
print(poem.count)

var total = 100
print(total)

//类型推论
let moneySpent = "90.08"
print(moneySpent)

print("------------------------")
    //基本数学运算
let a:Double = 4
var b = 5.60


b = 8
    //一元运算
print(-a)
    //二元运算
print(a + b)
print(a*b)
print(a/b)
let c = 7
let d = 3
print(c%d)
    //复合运算
var t=3.4
t = t + 1.1
print(t)
t += 1.5
print(t)

    //类型转换
var  x=6.9
var y=3
print(x/Double(y))
print(Int(x)/(y))
    //优先级
print(3+4*5)
print((3+4)*5)

    //字符串计算
var firstName = "fang"
var lastName = "siyu"
    //字符串插值
print(firstName + " \(x) " + lastName)

print("作业")

// Question 0
// 理解所有的代码

// Question 1
// 任务：将华氏度转化为摄氏度
// 提示：华氏度减去32之后再除以1.8，我们就能得到摄氏度。
print("Question 1")
let temperatureInF1: Double = 96.8
let temperatureInC1 = (temperatureInF1 - 32)/1.8 // TODO: 把赋值的右边改成正确的公式
print("\(temperatureInF1)华氏度在摄氏度下是\(temperatureInC1)")

// Question 2
// 任务：将摄氏度转化为华氏度，最后显示一个整数结果
// 提示：华氏度等于摄氏度乘以1.8之后再加32
print("Question 2")
let temperatureInC2: Double = 36.0
let temperatureInF2 = Int(temperatureInC2 * 1.8 + 32) // TODO: 把赋值的右边改成正确的公式
print("\(temperatureInC2)摄氏度在华氏度下是\(temperatureInF2)")

// Question3
// 任务：将一下这句话的作者，内容，和字符串的长度print出来。
// 示例输出：xxx曾说过："xxxxxx" 这句话一共有xxx个字符。
// 提示：在字符串字面量中使用双引号需要用到转义字符（反斜杠）
print("Question 3")
let author = "鲁迅"
let text = "墙外有两棵树，一棵是枣树，另一棵也是枣树。"
let result = author + "曾说过：\"\(text)\"" + "这句话一共有\(text.count)个字符。"
print(result)
// TODO: 把结果print出来。

    //Boolean
let first = true
let second = false
print(!first)
print(4 == 4)

    //条件语句
let temp = 24
if temp < 10 {
    print("多穿衣服，冷")
} else if temp > 30{
    print("天气很热，开空调")
} else {
    print("天气不错")
}

if 1 == 1 || 2 == 2 {
    print(true)
}else{
    print(false)
}
print("_______________")
//函数 Functions
func sayHello(name: String) {
    print("世界你好，\(name)")
}

sayHello(name: "小新")

sayHello(name: "小新Ssr")

func sayAdd(number1:Int,number2:Int){
    print("\(number1) + \(number2)")
}

sayAdd(number1:2, number2:2)
print("_______________")

func greet(name:String) -> String {
    let result = "你好，" + name + "！"
    return result
}
print(greet(name: "Tom"))
print("_______________")
    //作业
let minLength = 3
let maxLength = 12

func checkNumber(name:String) -> Bool {
    if(name.count > minLength && name.count < maxLength){
        return true
    }else {
        return false
    }
}

print(checkNumber(name: "hahahahahah"))
print(checkNumber(name: "hah"))
print("_______________")

func getLevel(number:Int) -> String{
    if(number >= 90 && number <= 100){
        return "A"
    }else if(number >= 80 && number <= 89){
        return "B"
    }else if(number >= 70 && number <= 79){
        return "C"
    }else if(number >= 60 && number <= 69){
        return "D"
    }else if(number >= 0 && number <= 89){
        return "F"
    }else {
        return "N/A"
    }
}

print(getLevel(number:68))
print(getLevel(number:-68))
print(getLevel(number:689))
print(getLevel(number:98))
print(getLevel(number:60))
print("________while 循环_______")
// while 循环
func countNature(number: Int){
    var counter = 0;
    while counter <= number{
        print(counter)
        if counter == 3 {
            break
        }
        counter += 1
    }
}

countNature(number: 5)

countNature(number: -1)

var names: [String] = ["Tom","Amy","Dav"]

let data: [Int] = []

let someDoubles = Array(repeating: 0.0, count: 5)
names[1] = "IT"
print(names[1])

print(names.count)

print(names.isEmpty)

//追加一个值
names.append("Echo")

print(names)


//插入一个值

names.insert("Rose", at: 2)

print(names)

//使用insert 实现 append

//数组拼接

let othersName = ["AAA","BBB"]
names += othersName;
print(names)

//实现一个长度为10的自然数数组
var numberArr:[Int] = Array(repeating: 0, count: 10)
var count = 0
while count < 10{
    numberArr[count] = count
    count += 1
}
print(numberArr)


var array2:[Int] = []
var index = 0
while index < 10{
    array2.append(index)
    index += 1
}
print(array2)


//遍历数组
let myArray = [0,1,2,3,4,5]

var index2 = 0
while index2 < myArray.count{
    print(myArray[index2])
    index2 += 1
}

for i in myArray {
    print(i)
}


for i in 0..<names.count{
    print(names[i])
}


//可选类型 Optionals

let isLoginIn = false
func getUsername() -> String? {
    if isLoginIn {
        return "Bob"
    }else {
        return nil
    }
}

var username: String? = getUsername()
if username == nil {
    print("no value")
}else{
    print(username ?? "")
}

//练习
func getHalf(para:Int) -> Int? {
    if para%2 == 1 {
        return nil
    }else{
        return para/2
    }
}
print(getHalf(para:9) ?? 0)


var nihao: String? = nil
print("你好，" + (nihao ?? "匿名用户"))

var ids: String! = nil
ids = "4399"
print("ID:" + ids)

// Optionals Binding 可选绑定
let grade:Int? = nil
if let unwrap = grade {
    print(unwrap)
}else{
    print("Grade is not yet")
}

//双问号默认值
let nameX:String? = nil
print("你好，" + (nameX ?? "匿名"))

//自动解析 Implicity Unwrapped Value (危险)

var idX: String! = nil
idX = "4399"
print("ID:" + idX)

//练习 重复打印字符串 一个函数
func repeatPrint(content: String,count: Int){
//    var counter = 0
//    while counter < count{
//        print(content)
//        counter += 1
//    }
    for _ in 0..<count{
        print(content)
    }
}

repeatPrint(content: "mingzi", count: 3)

//打印金字塔
func printPyramid(height: Int){
    for i in 1...height{
//        var j = 0
//        while j < i{
//            print("*",terminator: "")
//            j += 1
//        }
        for _ in 0..<i{
            print("*",terminator: "")
        }
        print("")
    }
}

printPyramid(height: 5)


//转换绝对值

func arrayAbs(input: [Int]) -> [Int]{
    var localInput = input
    for index in 0..<localInput.count{
        if localInput[index] < 0 {
            localInput[index] = -localInput[index]
        }
    }
    return localInput
}
print(arrayAbs(input: [1,2,0,-3,-2,-8,9,10]))


//打印指定值的斐拉契数列
// fibonacci(max: 30)
// 1 1 2 3 5 8 13 21 ...

func fibonacci(max: Int){
    var result: [Int] = [1,1]
    var i = 0
    while (result[i] + result[i+1]) < max{
        result.append(result[i] + result[i+1])
        i += 1
    }
    for item in result {
        print(item,terminator: ",")
    }
}

fibonacci(max: 100)
