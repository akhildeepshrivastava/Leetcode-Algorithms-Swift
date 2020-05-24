import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/longest-consecutive-sequence/
 
 Given an unsorted array of integers, find the length of the longest consecutive elements sequence.

 Your algorithm should run in O(n) complexity.

 Example:

 Input: [100, 4, 200, 1, 3, 2]
 Output: 4
 Explanation: The longest consecutive elements sequence is [1, 2, 3, 4]. Therefore its length is 4.
 
 */

//Time - O(n) Space - O(n)
func longestConsecutive(_ array: [Int]) -> Int {
    var largestRangeLength = 0
    var tempDict = [Int: Bool]()

    for num in array {
        tempDict[num] = true
    }


    for num in array {

        if tempDict[num]! {
            var currentLength = 1
            tempDict[num] = false
            var left = num - 1

            while tempDict.keys.contains(left) {
                tempDict[left] = false
                currentLength += 1
                left -= 1
            }


            var right = num + 1
            while tempDict.keys.contains(right) {
                tempDict[right] = false
                currentLength += 1
                right += 1
            }

            largestRangeLength = max(currentLength,largestRangeLength)

        } else {
            continue
        }
    }

    return largestRangeLength
}
