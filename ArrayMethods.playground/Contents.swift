// Array Methods

//  *** Adding / Inserting  Removing ***

var numbers = [1,2,3]

// 1. Append - Adds value to the end of the array
numbers.append(4)
print("After appending - \(numbers)")      // [1,2,3,4]

// 2. Insert - Inserts value at specified index
numbers.insert(100, at: 0)
print("After inserting - \(numbers)")      // [100,1,2,3,4]

// 3. Remove - removes value at specified index
numbers.remove(at: 4)
print("After removing - \(numbers)")      // [100,1,2,3]

// 4. Remove last - Removes the last element. Alternative popLast()
numbers.removeLast()
print("After removeLast - \(numbers)")      // [100,1,2]

// 5. Remove All - Removes all elements
numbers.removeAll()
print("After removeAll - \(numbers)")      // []


var words = ["red", "blue", "green", "blue"]

words.removeAll{ item in
    item == "blue"
}
print("After removing blue - \(words)")

//  *** Finding and checking values ***

// 1. contains
var nums = [1,2,3,4]
print(nums.contains(3))  // true

// 2. firstIndex
var fruits = ["Apple", "Banana", "Orange"]
//var idx = fruits.firstIndex(of: "Shreyas")  // nil

if let idx = fruits.firstIndex(of: "Orange") {
    print("After firstIndex(of: ) - \(idx)")      // 2
}

var numbs = [1,3,3,4,5]
if let even = numbs.firstIndex(where: { $0 % 2 == 0 }) {
    print(even)                                     // 3
}

// 3. isEmpty
var items: [Int] = []
print(items.isEmpty)    // true

let items2 = [1,2,3]
print(items2.isEmpty)    // false


//  *** Sorting and Reordering ***
// 1. Sorted
var ranks = [3,66,123,453,4,7]
var sortedRanks = ranks.sorted()
print("After sorting - \(sortedRanks)")   // [3, 4, 7, 66, 123, 453]
print("Original Array - \(ranks)\n")        // [3, 66, 123, 453, 4, 7]

// 2. Sort
var orders = [3,66,123,453,4,7]
orders.sort()
print("Original Array After sorting - \(orders)\n")     // [3, 4, 7, 66, 123, 453]

// 3. Sorted(by: )
var nums1 = [3,66,123,453,4,7]
var newnums1 = nums1.sorted(by: >)
print("Original Array - \(nums1)")                           // [3, 66, 123, 453, 4, 7]
print("After sorting by descending order - \(newnums1)\n")   // [453, 123, 66, 7, 4, 3]

// 4. Sort(by: )
var nums2 = [3,66,123,453,4,7]
nums2.sort(by: >)
print(nums2)                     // [453, 123, 66, 7, 4, 3]

// 5. Reversed
var nums3 = [3,66,123,453,4,7]
var newnums3 = nums3.reversed()
print(newnums3)                    // ReversedCollection<Array<Int>>(_base: [3, 66, 123, 453, 4, 7])
var nums3Again = Array(nums3.reversed())
print(nums3Again)                        // [7, 4, 453, 123, 66, 3]

// 6. Reverse
var nums4 = [3,66,123,453,4,7]
nums4.reverse()                     // [7, 4, 453, 123, 66, 3]

//  *** Higher order functions ***
// *** map, filter, reduce, flatmap, compactmap, foreach ***

// 1. map (transforms values)
var digits = [1,4,6,8]
var newdigits1 = digits.map({ item in
 item + 10
})

var newdigits2 = digits.map({ $0 + 20 })
print(newdigits1)                   // [11, 14, 16, 18]
print(newdigits2)                   // [21, 24, 25, 28]

var examples = [1,4,5,2,7]
var newexamples = examples.map({ [$0, $0 * 4] })
print(newexamples)                   // [[1, 4], [4, 16], [5, 20], [2, 8], [7, 28]]

// 2. flatmap (transforms values and removes any nested array)
var copies = [1,4,5,2,7]
var newcopies = copies.flatMap({ [$0, $0 * 4] })
print(newcopies)                    // [1, 4, 4, 16, 5, 20, 2, 8, 7, 28]

// 3. filter
var sample = [1,4,6,8]
var newsample = sample.filter({ $0 % 2 == 0 })
print(newsample)                     // [4, 6, 8]

var names = ["Shreyas", "Swathi", "Raj", "Jim"]
var newnames = names.filter({ $0.count > 4 })
print(newnames)                     // ["Shreyas", "Swathi"]

// 4. reduce
var values = [1,2,3,4]
var newvalues = values.reduce(0) { $0 + $1 }
print(newvalues)                            // 10

// 5. compactmap (transforms and removes nil)
var age = ["12","13","adr"]
print("**** compact map ****")

let newAgeMapped = age.map({ Int($0) })
print(newAgeMapped)                                     // [Optional(12), Optional(13), nil]
let newAgeCompactmapped = age.compactMap({ Int($0) })
print(newAgeCompactmapped)                              // // [12, 13]

// 6. forEach
var sampleValues = [1,3,4,8]
sampleValues.forEach({ print($0 * 2) })
/*
 2
 6
 8
 16
 */
print("******")
var sampleValues1 = [1,3,4,8]
sampleValues1.forEach({ item in
        print(item * 3)
})

/*
 3
 9
 12
 24
 */

// *** Slicing ***
var num5 = [3,66,123,453,4,7]

// 1. prefix
print(num5.prefix(3))       // [3,66,123]

// 2. Suffix
print(num5.suffix(2))       // [4,7]

// 3. dropLast
print(num5.dropLast(2))     // [3,66,123,453]

// 4. dropFirst
print(num5.dropFirst(5))       // [7]
