import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/sort-colors/
 
 Given an array with n objects colored red, white or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white and blue.

 Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

 Note: You are not suppose to use the library's sort function for this problem.

 Example:

 Input: [2,0,2,1,1,0]
 Output: [0,0,1,1,2,2]
 
 */

func sortColors(_ nums: inout [Int]) {
    var start = 0
    var end = nums.count - 1
    
    for i in 0..<nums.count {
        if nums[i] == 0 {
            nums.swapAt(start,i)
            start += 1
        }
    }
    
    for i in (0..<nums.count).reversed() {
        if nums[i] == 2 {
            nums.swapAt(end,i)
            end -= 1
        }
    }
}
