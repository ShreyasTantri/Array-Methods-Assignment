// Array Methods

//  *** Adding / Inserting  Removing ***

var numbers = [1,2,3]

// 1. Append
numbers.append(4)
print(numbers)  // [1,2,3,4]

// 2. Insert
numbers.insert(100, at: 0)
print(numbers)  // [100,1,2,3,4]

// 3. Remove
numbers.remove(at: 4)
print(numbers)  // [100,1,2,3]

// 4. Remove last - Alternative popLast()
numbers.removeLast()
print(numbers)  // [100,1,2]

// 5. Remove All
numbers.removeAll()
print(numbers)  // []


var words = ["red", "blue", "green", "blue"]

words.removeAll{ item in
    item == "blue"
}
print(words)

//  *** Finding and checking values ***

// 1. contains
var nums = [1,2,3,4]
print(nums.contains(3))  // true

// 2. firstIndex
var fruits = ["Apple", "Banana", "Orange"]
//var idx = fruits.firstIndex(of: "Shreyas")  // nil

if let idx = fruits.firstIndex(of: "Orange") {
    print(idx)
}

// 3. isEmpty

var items: [Int] = []
print(items.isEmpty)

let b = [1,2,3]
print(b.isEmpty)




