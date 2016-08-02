import Foundation

/*:
 由于可选项的值可能为 `nil`，不允许直接参与运算，因此在实际开发中，经常需要判断可选项是否有值。
 
 如果单纯使用 if，会让代码嵌套层次很深，不宜阅读和维护，为了解决这一问题，苹果提供了以下三种方式：
 
 * `??`
 * `if let / var`
 * `guard let / var`
 
 ## ??
 
 * `??` 运算符可以用于判断可选项是否为 `nil`，如果是则使用后面的值替代
 
 > 注意：`??` 的优先级低，在使用时，应该注意使用 `()`
 */

let x: Int? = 10
let y: Int? = 100
print((x ?? 0) + (y ?? 0))

/*:
 ## if `let / var`
 
 * 使用 `if let`，一旦进入 `if` 分支，表示可选项一定有值
 * `常量/变量`的作用域仅在 `{}` 内部
 * 使用 `,` 可以判断多个可选项是否有值
 * 使用同名常量/变量，避免再次起名的烦恼
 * 如果要在分支逻辑中修改值，可以使用 `var`，通常使用 `let`
 */

let name: String? = "Mike"
let age: Int? = 18

if let name = name,
    let age = age {
    print("\(name) 今年 \(age) 岁")
} else {
    print("姓名或者年龄为 nil")
}

/*:
 ## guard 
 
 * `guard` 是与 `if let` 相反的语法，Swift 2.0 推出
 * `guard` 同样可以判断可选项是否有值
 * 多值判断使用 `,` 分隔
 * 如果发现 `nil`，在 `else` 分支返回
 * 分支结束后，所有的 `常量/变量` 都有值
 * 相比较 `if let`，`guard` 语法的分支结构能节省一层
 * 如果要在后续逻辑中修改值，可以使用 `var`，通常使用 `let`
 */

func demo(name: String?, age: Int?) {
    
    guard let name = name,
        let age = age else {
            print("姓名或者年龄为 nil")
            
            return
    }
    
    print("\(name) 今年 \(age) 岁")
}

demo(name: name, age: age)

//: 有关本示例的许可信息，请参阅：[许可协议](License)
