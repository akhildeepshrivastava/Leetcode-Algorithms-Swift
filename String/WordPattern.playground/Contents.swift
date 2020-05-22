import UIKit

var str = "Hello, playground"


//https://leetcode.com/problems/word-pattern/

/*
 Given a pattern and a string str, find if str follows the same pattern.

 Here follow means a full match, such that there is a bijection between a letter in pattern and a non-empty word in str.
 
 
 Example 1:

 Input: pattern = "abba", str = "dog cat cat dog"
 Output: true
 Example 2:

 Input:pattern = "abba", str = "dog cat cat fish"
 Output: false
 Example 3:

 Input: pattern = "aaaa", str = "dog cat cat dog"
 Output: false
 Example 4:

 Input: pattern = "abba", str = "dog c    dog dog"
 Output: false
 
 */

func wordPattern(_ pattern: String, _ str: String) -> Bool {
    
    let wordArray = str.components(separatedBy: " ")
    let patternArray = Array(pattern)
    
    guard wordArray.count == pattern.count else {
        return false
    }
    
    var tempDict = [Character: String]()
    
    for i in 0..<wordArray.count {
        if let val = tempDict[patternArray[i]] {
            if val != wordArray[i] {
                return false
            }
        } else {
            if tempDict.values.contains(wordArray[i]) {
                return false
            }
            tempDict[patternArray[i]] = wordArray[i]
        }
    }
    
    return true
}


wordPattern("abba", "dog dog dog dog")

var array = [5,2,3,4,1]
array.sort { (a, b) -> Bool in
    return a < b
}
print(array)

array.reduce(0) { $0 + $1 }

