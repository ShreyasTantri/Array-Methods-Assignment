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


//  *** Sorting and Reordering ***

// 1. Sorted
var ranks = [3,66,123,453,4,7]
var sortedRanks = ranks.sorted()
print("After sorting - \(sortedRanks)")
print("Original Array - \(ranks)\n")

// 2. Sort
var orders = [3,66,123,453,4,7]
orders.sort()
print("Original Array After sorting - \(orders)\n")

// 3. Sorted(by: )
var num1 = [3,66,123,453,4,7]
var newnum1 = num1.sorted(by: >)
print("Original Array - \(num1)")
print("After sorting by descending order - \(newnum1)\n")

// 4. Sort(by: )
var num2 = [3,66,123,453,4,7]
num2.sort(by: >)
print(num2)

// 5. Reversed
var num3 = [3,66,123,453,4,7]
var newnum3 = num3.reversed()
print(newnum3)
var num3Again = Array(num3.reversed())
print(num3Again)

// 4. Reverse
var num4 = [3,66,123,453,4,7]
num4.reverse()
