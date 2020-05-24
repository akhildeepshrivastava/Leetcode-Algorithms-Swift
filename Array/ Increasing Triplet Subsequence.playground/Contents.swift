import UIKit

var str = "Hello, playground"

/*
 
 //https://leetcode.com/problems/increasing-triplet-subsequence/
 
 Given an unsorted array return whether an increasing subsequence of length 3 exists or not in the array.

 Formally the function should:

 Return true if there exists i, j, k
 such that arr[i] < arr[j] < arr[k] given 0 ≤ i < j < k ≤ n-1 else return false.
 Note: Your algorithm should run in O(n) time complexity and O(1) space complexity.

 Example 1:

 Input: [1,2,3,4,5]
 Output: true
 Example 2:

 Input: [5,4,3,2,1]
 Output: false
 
 */

func increasingTriplet(_ nums: [Int]) -> Bool {
    guard nums.count > 3 else {
        return false
    }

    var small = Int.max, big = Int.max
    
    for i in 0..<nums.count {
        
        if nums[i] <= small {
            small = nums[i]
        } else if nums[i] <= big {
            big = nums[i]
        } else {
            return true
        }
    }

    return false
}
