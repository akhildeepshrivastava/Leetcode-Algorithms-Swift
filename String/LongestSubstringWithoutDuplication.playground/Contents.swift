import UIKit

var str = "Hello, playground"
//https://leetcode.com/problems/longest-substring-without-repeating-characters/

/*
 Given a string, find the length of the longest substring without repeating characters.

 Example 1:

 Input: "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
              Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */
// O(n) Time | O(N) spcae where N is number of disctinct character
func longestSubstringWithoutDuplication(_ string: String) -> String {
    // Write your code here.
    var startIndex = 0
    var longestRange = (0,0)
    var lastSeenDict = [Character: Int]()
    
    for (index, character) in string.enumerated() {
        
        if let lastSeenIndex = lastSeenDict[character] {
            if  lastSeenIndex + 1 > startIndex {
                startIndex = lastSeenIndex + 1
            }
        }
        
        if longestRange.1 - longestRange.0 < index - startIndex {
            longestRange = (startIndex , index)
        }
        
        lastSeenDict[character] = index
        
    }
    
    let start = string.index(string.startIndex, offsetBy: longestRange.0)
    let end = string.index(string.startIndex, offsetBy: longestRange.1)
    
    
    return String(string[start...end])
}

longestSubstringWithoutDuplication("clementisacap")
