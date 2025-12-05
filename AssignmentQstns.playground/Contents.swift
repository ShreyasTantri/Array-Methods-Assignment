/*
 1. Given an array of words, find the index of the first word that starts with the letter "s", ignoring case.
 ["Apple", "banana", "Cherry", "strawberry", "Grape", "sandwich"]
*/

var words1 =  ["Apple", "banana", "Cherry", "strawberry", "Grape", "sandwich"]

if let index = words1.firstIndex(where: { $0.first?.lowercased() == "s".lowercased() }){
    print("1st - \(index)")               // 3
} else {
    print("No value found")
}

/*
 2. Given an array of words:
 ["tree", "queue", "sky", "cooperate", "apple"]
 Find the index of the first word that has more than 3 vowels.
 Vowels: a, e, i, o, u (ignore case)
*/
let vowels = "aeiou"
var words =  ["tree", "queue", "sky", "cooperate", "apple"]

if let index = words.firstIndex(where: { word in
    var count = 0
    
    for ch in word {
        if vowels.contains(ch.lowercased()) {
            count += 1
        }
    }
    return count > 3
}) {
    print("2nd - \(index)")       // 1
}

/*
 3. Given an array of strings: —> little complex

 ["Bob", "Alice", "john", "BOB", "ALICE", "mike"]

 Find the index of the first word that appears more than once, ignoring case.

 So "Bob" and "BOB" should count as duplicates.
 Same for "Alice" and "ALICE".
 Expected result:
 The first repeated (case-insensitive) word is "BOB", which appears at index 3.
 So the answer should be:
 Index = 3
 */

var names =  ["Bob", "Alice", "john", "BOB", "ALICE", "mike"]
var seen: [String] = []

if let index = names.firstIndex(where: { word in
    if seen.contains(word.lowercased()) {
        return true
    } else {
        seen.append(word.lowercased())
        return false
    }
}) {
    print("3rd - \(index)")       // 3
}

/*
4. “First or Last = 5”
Write a Swift function that:
- Accepts an array of integers (non-empty).
- Returns true if either the first element or the last element is equal to 5.
- Returns false otherwise.
 
func isFirstOrLastFive(_ arr: [Int]) -> Bool {
     // your code here
 }

isFirstOrLastFive([5, 1, 2, 3])     // true (first element is 5)
isFirstOrLastFive([1, 2, 3, 5])     // true (last element is 5)
isFirstOrLastFive([1, 5, 3, 4])     // false
*/

//func isFirstOrLastFive(_ arr: [Int]) -> Bool {
//     // your code here
//    let count = arr.count
//    for i in 0..<count {
//        if (i == 0 || i == count - 1) && arr[i] == 5 {
//            return true
//        }
//    }
//    return false
// }

func isFirstOrLastFive(_ arr: [Int]) -> Bool {
     // your code here
    let count = arr.count
    if count > 0 {
        if arr[0] == 5 || arr[count-1] == 5 {
            return true
        }
    }
    
    return false
 }

var array: [Int] = [2, 1, 2, 5]
let result = isFirstOrLastFive(array)
print(result)                                    // true

/*
5. Check for Adjacent 3s

Problem: Write a Swift function that:
Accepts an array of integers.
Returns true if the array contains two adjacent elements both equal to 3 somewhere.
Returns false otherwise.
 
 func hasTwoAdjacentThrees(_ arr: [Int]) -> Bool {
     // your code here
 }
 
 hasTwoAdjacentThrees([1, 3, 3, 5])    // true  — because there are two 3’s next to each other
 hasTwoAdjacentThrees([3, 1, 3])       // false — no two 3’s adjacent
 hasTwoAdjacentThrees([1, 2, 3])       // false
 hasTwoAdjacentThrees([3, 3])          // true
 hasTwoAdjacentThrees([])              // false  — empty array, no adjacent elements
*/


func hasTwoAdjacentThrees(_ arr: [Int]) -> Bool {
    // your code here
    if arr.count > 1 {
        for i in 0..<arr.count - 1 {
            if arr[i] == 3 && arr[i + 1] == 3 {
                return true
            }
        }
        return false
    }
    return false
}

var arrayNums: [Int] = [5, 5, 12, 21, 5, 54, 51, 55, 75, 61, 72, 8, 3, 3]           // true
//var arrayNums: [Int] = [1, 3, 3, 5]                   // true
//var arrayNums: [Int] = [3, 1, 3]                    // false
//var arrayNums: [Int] = []                               // false

//var arrayNums: [Int] = [1, 3, 3, 5]
let answer = hasTwoAdjacentThrees(arrayNums)
print(answer)                                               // true


/*
 6. Count Even Numbers in an Array
 Write a function that returns how many even numbers are inside a given integer array.
 
 [2, 5, 6, 7, 8] → there are 3 even numbers (2, 6, 8)
 */

var numbersArray: [Int] = [5, 4, 12, 21, 48, 54, 51, 55, 75, 61, 72, 8, 3, 0]
//var numbersArray: [Int] = [2, 5, 6, 7, 8]

//func evenCount(_ array: [Int]) -> Int {
//    var count = 0
//    for i in 0..<array.count {
//        if array[i] % 2 == 0 {
//            count += 1
//        }
//    }
//    return count
//}

func evenCount(_ array: [Int]) -> Int {
    var count = 0
    
    for num in array {
        if num % 2 == 0 {
            count += 1
        }
    }
    return count
}


let totalCount = evenCount(numbersArray)
print(totalCount)                       // 7


/*
 7. Three Consecutive Increasing Numbers
 Write a function that returns true if the array contains three numbers in a row where each next one is exactly +1 from the previous.
 
 [4, 5, 6] → true
 [1, 2, 4, 5, 6] → true (because 4,5,6 is a sequence)
 [3, 5, 6, 7] → true (sequence is 5,6,7)
 [1, 3, 5] → false
 [7, 8] → false
 [] → false
 */

func threeConsecutive(_ array: [Int]) -> Bool {
    var count = 0
    if array.count == 0 {
        return false
    }
    for i in 0..<array.count - 2 {
        if array[i+1] == array[i] + 1 && array[i+2] == array[i] + 2 {
            count += 1
        }
    }
    if count == 1 {
        return true
    }
    
    return false
}

var elements: [Int] =   [4, 5, 6]
let isContinious = threeConsecutive(elements)
print(isContinious)
