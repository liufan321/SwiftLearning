
// Int
var intValue1 = 10
var intValue2: Int = 20
let intResult = intValue1 + intValue2

// Double & Float
var doubleValue1 = 10.3
var doubleValue2: Double = 20.7
let doubleResult = doubleValue1 + doubleValue2

var floatValue: Float = 33.7
let floatResult: Float = Float(doubleValue1) + floatValue

// Bool
var boolValue1 = true
var boolValue2: Bool = false

if (boolValue1) {
    println("hello")
}

// String
var stringValue1 = "Hello"
var stringValue2: String = "World"

var stringResult = stringValue1 + " " + stringValue2

stringResult += " \(intResult)"
