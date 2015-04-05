//: Playground - noun: a place where people can play

import UIKit

//------------------------------------------------------------------------------
// 1. 字典定义
//
// 1.1 快速定义
// 1> 使用 `[]` 同样可以快速定义字典，每一个元素使用 `,` 分隔
// 2> 值对之间使用 `:` 分隔
// 3> 以下定义字典的方式，定义的字典内容是 [String: NSObject]
//    使用 option + click 可以查看字典的内容
var dict1 = ["name": "mary", "age": 18, "height": 1.6]
let dict2 = ["name": "mike", "age": 19, "height": 1.8]

//------------------------------------------------------------------------------
// 2. 操作
//
// 2.1 取值
// 使用键名能够提取字典中的内容，但是需要指定数据类型
let name1 = dict1["name"] as! String
let name2 = dict2["name"] as! String

let mergeName = name1 + name2

// 2.2 修改
dict1["name"] = "jack"
dict1

dict1.updateValue(108, forKey: "age")
dict1

// 2.3 删除一个键
dict1.removeValueForKey("age")
dict1

// 2.4 添加一个键值对
dict1["nickname"] = "jack nick"
dict1

//------------------------------------------------------------------------------
// 3. 遍历
for (k, v) in dict1 {
    println("key - \(k), value - \(v)")
}

//------------------------------------------------------------------------------
// 4. 合并
var mDict1 = [String: AnyObject]()
mDict1["name"] = "zhangsan"
mDict1["age"] = 18
mDict1["nick name"] = "xiao zhang"

var mDict2 = [String: AnyObject]()
mDict2["name"] = "lisi"
mDict2["age"] = 28
mDict2["book"] = "iPhone"

for (k, v) in mDict2 {
    mDict1.updateValue(v, forKey: k)
}

mDict1
