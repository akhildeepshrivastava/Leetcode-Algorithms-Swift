import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/3sum/submissions/

/*
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

 Note:

 The solution set must not contain duplicate triplets.

 Example:

 Given array nums = [-1, 0, 1, 2, -1, -4],

 A solution set is:
 [
   [-1, 0, 1],
   [-1, -1, 2]
 ]
 
 
 
 */

//Time - O(n2) , Space O(n) to store output.
//Actual problem is for targetSum == 0, but below function cvan be used for any targetSum
func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
    // Write your code here.
    array.sort()
    var result = [[Int]]()
    for i in 0..<array.count-2 {
        
        var left = i+1, right = array.count - 1
        while left < right {
            if array[i] + array[left] + array[right] == targetSum {
                result.append([array[i], array[left], array[right]])
                left += 1
                right -= 1
            } else if array[i] + array[left] + array[right] < targetSum{
                left += 1
            } else {
                right -= 1
            }
        }
        
    }
    return result
}
