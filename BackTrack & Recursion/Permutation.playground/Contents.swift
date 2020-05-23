import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/permutations/

/*Given a collection of distinct integers, return all possible permutations.

Example:

Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]*/

//Time O(n*n!) | Spcae = O(n*n!)
func permute(_ nums: [Int]) -> [[Int]] {
    var vNums = nums
    var permutations = [[Int]]()
    permuteHelper(&vNums, &permutations, 0)
    return permutations
}

func permuteHelper(_ nums: inout [Int], _ permutations: inout [[Int]],
                  _ currentIndex: Int) {
    if currentIndex == nums.count - 1 {
        permutations.append(nums)
        return
    } else {
        for i in currentIndex..<nums.count {
            nums.swapAt(currentIndex,i)
            permuteHelper(&nums, &permutations, currentIndex+1)
            nums.swapAt(currentIndex,i)
        }
    }
}
