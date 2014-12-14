// 1. 变量
// `var` 用于定义变量，表示内容可以修改

// Swift中变量类型是根据初始赋值自动推断的
// 以下两个变量是 Int 类型
var intValue1 = 10
intValue1 = 100
var intValue2: Int = 20

var intResult = intValue1 + intValue2

// 定义一个 Double 类型的变量
var doubleValue = 10.5

// 在 Swift 中，不允许对不同数据类型直接进行操作，以下语句会报错
//var result = intValue1 + doubleValue

// 操作前，需要指定变量的类型
var doubleResult1 = Double(intValue1) + doubleValue
// 或者
var intResult2 = intValue1 + Int(doubleValue)

// 2. 常量
// `let` 用于定义常量，表示内容一经设置，不允许修改
let constValue = 100

// 以下语句试图修改一个常量，会报错
//constValue = 200
