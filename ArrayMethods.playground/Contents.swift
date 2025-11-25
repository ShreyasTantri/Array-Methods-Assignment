// Array Methods
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
