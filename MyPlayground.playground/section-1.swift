// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for x in 0...255 {
    let t = Double(x) * sin(Double(x) * M_PI_4/4)
}

// 定数
let stageWidth = 640

// 型推論
var myInt = 10
var myFloat = 1.1
var myString = "こんちわ"
var myBool = true

// 型指定
var myInt2:Int = 10
var myFloat2:Float = 1.1
var myString2:String = "こんちわ"
var myBool2:Bool = true

// Int -> String
var intA = 1000
var strA = String(intA)

// Int -> Double
var dobuleA = Double(intA)

// Error : var strAint = int(strA)
var intA2 = strA.toInt()

// tuple
var (a, b) = (1, 2)
a
b

// 文字列の連結
var helloStr = "こんちわ"
var worldStr = "世界"
helloStr + ", " + worldStr

// 文字列に変数を埋め込む
var name = "太郎"
"ほげほげ\(name)"

var opStr:String? = "A"

println(opStr)
println(opStr?)
println(opStr!)

opStr = nil

println(opStr)
println(opStr?)
// println(opStr!)

var abcStr:String? = "abc"
var upStr = abcStr?.uppercaseString
println(upStr)

// Optional Binding

var ansInt:Int = 0
var opInt:Int? = nil

// Errorになる String(opInt)
   
if let tmpInt = opInt {
   String(tmpInt) // Errorにならない
} else {
    ansInt = -1
}

ansInt

var opInt2:Int?  = nil
opInt ?? -1

// 配列

var ary = []
// Error ary[0] = 1
// Error ary.append(1)

var hoge:[String] = []
hoge.append("hoge")
hoge.append("fuga")
hoge

var fuga = [String](arrayLiteral: "hoge", "piyo")

var piyo:[String] = ["hoge", "fuga", "piyo"]

piyo.count
piyo[1...2]

for str in piyo {
    println(str)
}

for (i, str) in enumerate(piyo) {
    println(i)
    println(str)
}

// append or +=
var testAry:[Int] = []
for i in 1...100 {
    testAry.append(i)
}
testAry = []


//for i in 1...100 {
//    testAry += [i]
//}

// sort


var intArrayS = [5, 3, 2, 1, 4]
intArrayS.sort({$0 < $1})
intArrayS

// while

var d = 100
while d > 0 {
    d -= 1
}


// func
func myFunc(val:Int, str2:String)->Int{
    if let tmp = str2.toInt() { // toIntした結果がnilかどうかで結果を変える
        return val + tmp
    } else {
        return val
    }
}

myFunc(12, "42")
myFunc(12, "A")




