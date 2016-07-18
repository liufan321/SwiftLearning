import Foundation

/*:
 ## 概念
 
 * `Optional` 是 Swift 的一大特色，也是 Swift 初学者最容易困惑的问题
 * 定义变量时，在类型后面添加一个 `?`，表示该变量是可选的
 * 定义变量时，如果指定是可选的，表示该变量：
   * 可以有一个指定类型的值
   * 也可以是 `nil`
 
 ## 定义
 
 * 格式1(自动推导)：`var 变量名: Optional = 值`
 * 格式2(泛型)：`var 变量名：Optional<类型> = 值`
 * 格式3(简化格式)：`var 变量名: 类型? = 值`
 */
// 格式1
let x: Optional = 20
// 格式2
let y: Optional<Int> = 30
// 格式3
let z: Int? = 10

print(x)
print(y)
print(z)

/*:
 ## 默认值
 
 * 变量可选项的默认值是 `nil`
 * 常量可选项没有默认值，需要在定义时，或者构造函数中赋值
 */
var x1: Int?
print(x1)

let x2: Int?
// 常量可选项没有默认值，在赋值之前不能使用
// print(x2)
x2 = 100
print(x2)

/*:
 ## 计算和强行解包
 
 * 可选值在参与计算前，必须`解包 unwarping`
 * 只有`解包(unwrap)`后才能参与计算
 * 在可选项后添加一个 `!`，表示强行解包
   * 如果有值，会取值，然后参与后续计算
   * 如果为 `nil`，强行解包会导致崩溃

 > 程序员要对每一个 `!` 负责
 */
print(x! + y! + z!)

/*:
 ## 可选解包
 
 * 如果只是调用可选项的函数，而不需要参与计算，可以使用**可选解包**
 * 在可选项后，使用 `?` 然后再调用函数
 * 使用可选解包可以：
   * 如果有值，会取值，然后执行后续函数
   * 如果为 `nil`，不会执行任何函数
 
 > 与强行解包对比，可选解包更安全，但是只能用于函数调用，而不能用于计算
 */
var optionValue: Int?
print(optionValue?.description)
// 输出 nil

optionValue = 10
print(optionValue?.description)
// 输出 Optional("10")

//: 有关本示例的许可信息，请参阅：[许可协议](License)
