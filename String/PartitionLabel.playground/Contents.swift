import UIKit

var str = "Hello, playground"

// https://leetcode.com/problems/partition-labels/

/*
 A string S of lowercase letters is given. We want to partition this string into as many parts as possible so that each letter appears in at most one part, and return a list of integers representing the size of these parts.

 Example 1:
 Input: S = "ababcbacadefegdehijhklij"
 Output: [9,7,8]
 Explanation:
 The partition is "ababcbaca", "defegde", "hijhklij".
 This is a partition so that each letter appears in at most one part.
 A partition like "ababcbacadefegde", "hijhklij" is incorrect, because it splits S into less parts.
 Note:

 S will have length in range [1, 500].
 S will consist of lowercase letters ('a' to 'z') only.
 */
func partitionLabels(_ S: String) -> [Int] {
    
    var result = [Int]()
    var characterMap = [Character: Int]()
    let charArray = Array(S)
    
    for (i,char) in charArray.enumerated() {
        characterMap[char] = i
    }
    
    var start = 0
    
    while start < S.count {
        var end = characterMap[charArray[start]]
        var j = start + 1
        while j != end {
            end = max(end!, characterMap[charArray[j]]!)
            j += 1
        }
        result.append(end!-start+1)
        start = end! + 1
    }

    return result
}

