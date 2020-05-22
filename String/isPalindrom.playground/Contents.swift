import UIKit

var str = "Hello, playground"

/*
  Given a string, write a c function to check if it is palindrome or not.
 A string is said to be palindrome if reverse of the string is same as string. For example, “abcba” is palindrome, but “abb” is not palindrome
 */

//Time - O(n^2) | Space - O(n)
func isPalindrome(string: String) -> Bool {
    // Write your code here.
    var reversedString = ""
    for i in (0..<string.count).reversed() {
            let startindex = string.index(string.startIndex, offsetBy: i)
            
            reversedString.append(string[startindex])

    }
    return string == reversedString
}

//Time - O(n) | Space - O(n)
func isPalindrome1(string: String) -> Bool {
    // Write your code here.
    var reversedString = [Character]()
    
    for i in (0..<string.count).reversed() {
            let startindex = string.index(string.startIndex, offsetBy: i)
            
            reversedString.append(string[startindex])

    }
    return string == String(reversedString)
}


//Time - O(n) | Space - O(n)
func isPalindromeRecursion(string: String) -> Bool {
    // Write your code here.
    let startIndex = string.startIndex
    let endIndex = string.index(before: string.endIndex)
    
    return isPalindromHelper(string: string, start: startIndex, end: endIndex)
    
   
}

func isPalindromHelper(string: String, start: String.Index, end: String.Index) -> Bool {
    
    if start >= end {
        return true
    } else if string[start] == string[end] {
        let newStart = string.index(after: start)
        let newEnd = string.index(before: end)
       
        return isPalindromHelper(string: string, start: newStart, end:  newEnd)
    }
    return false
}

isPalindromeRecursion(string: "abcdcba")

func isPalindrome3(string: String) -> Bool {
    
    var leftIndex = string.startIndex
    var rightIndex = string.index(before: string.endIndex)
    
    while leftIndex < rightIndex {
        
        if string[leftIndex] == string[rightIndex] {
            leftIndex = string.index(after: leftIndex)
            rightIndex = string.index(before: rightIndex)
        } else {
            return false
        }
        
    }
    
    return true

}

isPalindrome3(string: "abcdcba")
