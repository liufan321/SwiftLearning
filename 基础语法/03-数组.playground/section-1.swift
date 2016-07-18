import Cocoa

//------------------------------------------------------------------------------
// 1. 数组定义
//
// 1.1 快速定义
// 1> 使用 `[]` 可以快速定义数组，每一个数组元素使用 `,` 分隔
// 2> 数组中的数据元素可以是不同类型
let array = ["hello", "swift", 1, 1.2]

//------------------------------------------------------------------------------
// 1.2 如果要让数组中存放的数据是同一种数据类型
// 可以在定义数组时指定其中的数据类型，代码如下：
//
// 1> `array1` 仅允许存放 `String`
let array1:[String] = ["hello", "swift"]
// 2> `array2` 仅允许存放 `Int`
let array2:[Int] = [1, 2, 3, 4, 5]

//------------------------------------------------------------------------------
// 1.3 使用泛型创建数组
// 在使用泛型定义数组时，`<>` 中的类型用于限定数组中元素的数据类型
//
// 如下代码限定 `array3` 数组仅允许存放 `Int`，`()` 会实例化数组
var array3 = Array<Int>()

print(array3.capacity)
// 容量为 0
array3.append(1)
// [1]
print(array3.capacity)
// 容量为 2

//------------------------------------------------------------------------------
// 2. 构造函数
// 在实例化数组时，还可以使用数组的构造方法，指定数组初始成员
var nums = [20, 20, 20]
//var nums = Array(count: 3, repeatedValue: 20)
//// nums 是 [20, 20, 20]
//print(nums.capacity)
//// 容量为 4
//
//let stringArray = Array(count: 2, repeatedValue: "Hello")
//// stringArray 是 ["Hello", "Hello"]
//println(stringArray.capacity)
//// 容量为 2

//------------------------------------------------------------------------------
// 3. 常见数组操作
//
// 3.1 使用下标访问元素
// 取值
var n = nums[0]
// 下标越界会直接报错
//n = nums[100]

// 赋值，注意下标不能越界
nums[0] = 100
print(nums)

// 通过下标范围取子数组，注意下标不能越界
let subNums = nums[0...1]

// 3.2 数组计数
print(nums.count)
// 结果 3
// 数组容量
print(nums.capacity)
// 结果 4

// 3.3 追加元素
nums.append(21)
// [100, 20, 20, 21]
print(nums.capacity)
// 结果 4
nums.append(22)
// [100, 20, 20, 21, 22]
print(nums.capacity)
// 结果 8
// 增加 4 个数字，观察 capacity 的变化
for i in 0...3 {
    nums.append(i)
}
print(nums)
// [100, 20, 20, 21, 22, 0, 1, 2, 3]
print(nums.capacity)
// 结果 16

// 3.4 插入元素
nums.insert(19, at: 0)
// [19, 100, 20, 20, 21, 22, 0, 1, 2, 3]
nums.insert(99, at: 3)
// [19, 100, 20, 99, 20, 21, 22, 0, 1, 2, 3]

// 3.5 删除元素
// 1> 删除指定位置元素
nums.remove(at: 2)
print(nums)
// [19, 100, 99, 20, 21, 22, 0, 1, 2, 3]

// 2> 删除末尾元素
nums.removeLast()
print(nums)
// [19, 100, 99, 20, 21, 22, 0, 1, 2]

// 3> 删除所有元素，但保留 capacity
nums.removeAll(keepingCapacity: true)
print(nums.capacity)
// 结果 16
for i in 0...2 {
    nums.append(i)
}
print(nums)
print(nums.capacity)
// 结果 16

// 4> 删除所有元素，不保留 capacity
nums.removeAll(keepingCapacity: false)
print(nums.capacity)
// 结果 0
for i in 0...2 {
    nums.append(i)
}
print(nums)
print(nums.capacity)
// 结果 4

// 3.6 是否为空
print(nums.isEmpty)
// 结果 false
nums.removeAll()
print(nums.capacity)
// 结果 0
print(nums.isEmpty)
// 结果 true
