import Foundation

/*:
 ## 知识点
 
 * if
 * 三目
 * switch
 
 ### if
 * Swift 中没有 C 语言中的**非零即真**概念
 * 在逻辑判断时必须显示地指明具体的判断条件 `true` / `false`
 * if 语句条件的 `()` 可以省略
 * 但是 `{}` 不能省略
 */

let num = 100

if num > 10 {
    print("大 \(num)")
} else {
    print("小 \(num)")
}

/*:
 ### 三目
 
 * Swift 中的 三目 运算保持了和 OC 一致的风格
 * 提示：以下代码，可以按 `cmd + shift + y`，打开控制台，查看输出结果
 */
num > 10 ? print("大 \(num)") : print("小 \(num)")

/*:
 ### switch
 * `switch` 不再局限于整数
 * `switch` 可以针对任意数据类型进行判断
 * 每一个 `case` 后面必须有可以执行的语句
 * 不再强制需要 `break`
 * 如果没有任何需要执行的语句，可以使用 `break`
 * 要保证处理所有可能的情况，不然编译器直接报错，不处理的条件可以放在 `default` 分支中
 * 每一个 `case` 中定义的变量仅在当前 `case` 中有效，而 OC 中需要使用 {}
 * 多值 case 可以使用 `,` 分隔
 */

let scoreString = "优"

switch scoreString {
case "优":
    let name = "学生"
    print(name + "80~100分")
case "良", "中": print("60~80分")
case "差": print("不及格")
default: break
}

/*:
 #### switch 的条件判断
 * switch 中可以使用 `where` 子句判断条件
 * 如果只做条件判断，`case` 部分可以使用 `_` 省略
 * 提示：Swift 中可以使用 `_` 忽略任何不关心的内容
 */
let score = 90
switch score {
case _ where score >= 80: print("优")
case _ where score >= 70: print("良")
case _ where score >= 60: print("中")
default: print("差")
}

//: 有关本示例的许可信息，请参阅：[许可协议](License)

