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

let items2 = [1,2,3]
print(items.isEmpty)


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

// 6. Reverse
var num4 = [3,66,123,453,4,7]
num4.reverse()

//  *** Higher order functions ***
// *** map, filter, reduce, flatmap, compactmap, foreach ***

// 1. map (transforms values)
var digits = [1,4,6,8]
var newdigits1 = digits.map({ item in
 item + 10
})

var newdigits2 = digits.map({ $0 + 10 })
print(newdigits1)
print(newdigits2)

var examples = [1,4,5,2,7]
var newexamples = examples.map({ [$0, $0 * 4] })
print(newexamples)

// 2. flatmap (transforms values and removes any nested array)
var copies = [1,4,5,2,7]
var newcopies = copies.flatMap({ [$0, $0 * 4] })
print(newcopies)

// 3. filter
var sample = [1,4,6,8]
var newsample = sample.filter({ $0 % 2 == 0 })
print(newsample)

var names = ["Shreyas", "Swathi", "Raj", "Jim"]
var newnames = names.filter({ $0.count > 4 })
print(newnames)

// 4. reduce
var values = [1,2,3,4]
values.reduce(0) { $0 + $1 }

// 5. compactmap (transforms and removes nil)
var age = ["12","13","adr"]
print("compact map")

let newAgeMapped = age.map({ Int($0) })
print(newAgeMapped)
let newAgeCompactmapped = age.compactMap({ Int($0) })
print(newAgeCompactmapped)

// 6. forEach
var sampleValues = [1,3,4,8]
sampleValues.forEach({ print($0 * 2) })
print("******")
var sampleValues1 = [1,3,4,8]
sampleValues1.forEach({ item in
        print(item * 3)
})

// *** Slicing ***
var num5 = [3,66,123,453,4,7]

// 1. prefix
print(num5.prefix(3))

// 2. Suffix
print(num5.suffix(2))

// 3. dropLast
print(num5.dropLast(2))

// 4. dropFirst
print(num5.dropFirst(5))
