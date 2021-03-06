import UIKit

var str = "Hello, playground"

/*
 
 https://leetcode.com/problems/maximum-subarray/
 
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

 Example:

 Input: [-2,1,-3,4,-1,2,1,-5,4],
 Output: 6
 Explanation: [4,-1,2,1] has the largest sum = 6.
 Follow up:

 If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.
 
 */
//Kadane's Algo

func maxSubArray(_ nums: [Int]) -> Int {
    
    var maxSumSoGFar = nums[0]
    var maxSumCurr = nums[0]
    
    for num in nums {
        maxSumCurr = max(maxSumCurr + num, num)
        maxSumSoGFar = max(maxSumSoGFar, maxSumCurr)
    }
    
    return maxSumSoGFar
    
}

maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
