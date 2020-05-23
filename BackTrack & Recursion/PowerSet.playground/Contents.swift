import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/subsets/

/*
 Given a set of distinct integers, nums, return all possible subsets (the power set).

 Note: The solution set must not contain duplicate subsets.

 Example:

 Input: nums = [1,2,3]
 Output:
 [
   [3],
   [1],
   [2],
   [1,2,3],
   [1,3],
   [2,3],
   [1,2],
   []
 ]
 */

//Time O(n*2^n) | Spcae = O(n*2^n)
func powerset(array: [Int]) -> [[Int]] {
    // Write your code here.
    var powerSet = [[Int]]()
    
    powerSet.append([])
    
    for element in array {
        for set in powerSet {
            powerSet.append(set + [element])
        }
    }

    return powerSet
}


//Using BackTrack
func powersetBackTrack(array: [Int]) -> [[Int]] {
    
    var powerSet = [[Int]]()
    powersetHelper(array: array, currIndex: 0, currentSet: [Int](), result: &powerSet)
    return powerSet
}

func powersetHelper(array: [Int], currIndex: Int, currentSet: [Int], result: inout [[Int]]) {
    if currIndex == array.count {
        result.append(currentSet)
        return
    }
    powersetHelper(array: array, currIndex: currIndex+1, currentSet: currentSet+[array[currIndex]], result: &result)
    powersetHelper(array: array, currIndex: currIndex+1, currentSet: currentSet, result: &result)
}

powersetBackTrack(array: [1,2,3])
