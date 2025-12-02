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
    print("2nd - \(index)")       // 3
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
