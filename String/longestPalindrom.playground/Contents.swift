import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/longest-palindromic-substring/
 
 Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

 Example 1:

 Input: "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 Example 2:

 Input: "cbbd"
 Output: "bb"
 */


// O(n^2) Time (1) Space
func longestPalindromicSubstring(_ s: String) -> String {
        if s.count < 2 {
            return s
        }

        var longestPalindrome = [0,0]
        let sArray = Array(s)

        for i in 1..<s.count {

            var oddLeft = i - 1
            var oddRight = i + 1
            let oddPalindromeLength = expandFromMiddle(sArray, &oddLeft, &oddRight)

            var evenLeft = i - 1
            var evenRight = i
            let evenPalindromeLength = expandFromMiddle(sArray, &evenLeft, &evenRight)

            var tempLongest = [Int]()

            if oddPalindromeLength[1] - oddPalindromeLength[0] > evenPalindromeLength[1] - evenPalindromeLength[0] {
                tempLongest = oddPalindromeLength
            } else {
                tempLongest = evenPalindromeLength
            }


            if tempLongest[1] - tempLongest[0] > longestPalindrome[1] - longestPalindrome[0] {
                    longestPalindrome = tempLongest
            }
        }

        let leftIndex = s.index(s.startIndex, offsetBy: longestPalindrome[0])
        let rightIndex = s.index(s.startIndex, offsetBy: longestPalindrome[1])

        return String(s[leftIndex...rightIndex])
    }

func expandFromMiddle(_ s: [Character], _ left: inout Int, _ right: inout Int) -> [Int] {
    
    while (left >= 0 && right < s.count && s[left] == s[right]) {
        left -= 1
        right += 1
    }
    
    return [left + 1, right - 1]
}

longestPalindromicSubstring( "a")
longestPalindromicSubstring("it's highnoon")


