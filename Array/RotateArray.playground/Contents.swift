import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/rotate-array/
 
 Given an array, rotate the array to the right by k steps, where k is non-negative.

 Follow up:

 Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 Could you do it in-place with O(1) extra space?
  

 Example 1:

 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 Example 2:

 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 
 */

func rotate(_ nums: inout [Int], _ k: Int) {
    let rotate = k%nums.count
    
    nums =  Array(nums[nums.count-rotate..<nums.count] + nums[0..<nums.count-rotate])
}

var nums = [1,2,3,4,5,6,7]
rotate(&nums, 3)

nums = [-1,-100,3,99]
rotate(&nums, 2)


func rotateInReverse(_ nums: inout [Int], _ k: Int) {

    let rotate = abs(k%nums.count)
    
    nums = Array(nums[rotate..<nums.count] + nums[0..<rotate])
}

nums = [1,2,3,4,5,6,7]
rotateInReverse(&nums, -3)
