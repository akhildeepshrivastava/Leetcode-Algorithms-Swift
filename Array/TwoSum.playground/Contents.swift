import UIKit

/*
 https://leetcode.com/problems/two-sum/
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example:

 Given nums = [2, 7, 11, 15], target = 9,

 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */
func twonumberSum(array: [Int], targetSum: Int) -> [Int] {
    
    /*
    //Time - O(n2), Space - Constant
    
     for i in 0..<array.count - 1 {
         for j in (i+1)..<array.count {
             if array[i] + array[j] == targetSum {
                 return [array[i], array[j]]
             }
         }
     }
 
    */
    
    /*
     
    //Space & Time - O(n)
    
    var tempDict = [Int:Int]()
    for i in 0..<array.count {
        if let complement = tempDict[targetSum - array[i]]  {
            return [complement, array[i]]
        } else {
            tempDict[array[i]] = array[i]
        }
     }
     */
    
    
    //Time - O(nLogn), Space - O(1) if array in inout parameter But In case of Swift it is O(n)
    
    let sortedArray  = array.sorted()
    var i = 0, j = array.count - 1
    while i < j {
        if sortedArray[i] + sortedArray[j] == targetSum {
            return [sortedArray[i], sortedArray[j]]
        } else if sortedArray[i] + sortedArray[j] > targetSum {
            j = j-1
        } else {
            i = i + 1
        }
    }
    
    
    return []
}


twonumberSum(array: [2, 7, 11, 15], targetSum: 9)
