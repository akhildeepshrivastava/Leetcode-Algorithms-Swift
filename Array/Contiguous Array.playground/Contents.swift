import UIKit

var str = "Hello, playground"

// https://leetcode.com/problems/contiguous-array/
/*
  Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.

  Example 1:
  Input: [0,1]
  Output: 2
  Explanation: [0, 1] is the longest contiguous subarray with equal number of 0 and 1.
  Example 2:
  Input: [0,1,0]
  Output: 2
  Explanation: [0, 1] (or [1, 0]) is a longest contiguous subarray with equal number of 0 and 1.
 */

// Trick Consoder 0 as -1

func findMaxLength(_ nums: [Int]) -> Int {
    
    var maxLength = 0
    var sumAtIndex = [Int: Int]()
    var currentSum = 0

    for i in 0..<nums.count {
        
        if nums[i] == 1 {
            currentSum += 1
        } else {
            currentSum -= 1
        }
        
        if currentSum == 0 {
            maxLength = max(maxLength,i+1)
        } else if let val = sumAtIndex[currentSum] {
             maxLength = max(maxLength,i-val)
        } else {
            sumAtIndex[currentSum] = i
        }
    }
 
    return maxLength
}
