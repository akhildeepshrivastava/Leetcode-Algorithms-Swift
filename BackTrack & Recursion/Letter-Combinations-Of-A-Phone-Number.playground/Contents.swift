import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/letter-combinations-of-a-phone-number/submissions/

/*
 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent.

 A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.



 Example:

 Input: "23"
 Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
 Note:

 Although the above answer is in lexicographical order, your answer could be in any order you want.
 */

func letterCombinations(_ digits: String) -> [String] {
    var result = [String]()
    if digits.count == 0 {
        return result
    }
    
    let mapping = ["0", "1", "abc", "def", "ghi", "jkl", "mno", "pqrs", "tuv", "wxyz"]
    letterCombinationRecursive(&result,Array(digits),current: "",index : 0, mapping: mapping)
    
    return result
}

func letterCombinationRecursive(_ result: inout [String], _ digits: [Character], current : String, index: Int, mapping: [String]) {
    if index == digits.count {
        result.append(current)
        return
    }
    
    let letters = Array(mapping[Int(String(digits[index]))!])
    for i in 0..<letters.count {
        let tempCurrent = current + String(letters[i])
        letterCombinationRecursive(&result,digits,current: tempCurrent,index : index+1, mapping: mapping)
    }
}
