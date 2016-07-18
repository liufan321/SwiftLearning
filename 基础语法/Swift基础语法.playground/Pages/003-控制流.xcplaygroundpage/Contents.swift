import Foundation

/*:
 ## 内容提纲
 
 * if
 * 三目
 * switch
 * 可选项判断
 
 ### if
 * Swift 中没有 C 语言中的**非零即真**概念
 * 在逻辑判断时必须显示地指明具体的判断条件 `true` / `false`
 * if 语句条件的 `()` 可以省略
 * 但是 `{}` 不能省略
 */

let num = 10

if num > 10 {
    print("大 \(num)")
} else {
    print("小 \(num)")
}


