import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/move-zeroes/
 
 Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Example:

 Input: [0,1,0,3,12]
 Output: [1,3,12,0,0]
 Note:

 You must do this in-place without making a copy of the array.
 Minimize the total number of operations.
 
 */

// Time - O(n)
func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    // Write your code here.
    var tempIndex = 0

    for i in 0..<array.count {
        if array[i] != toMove {
            array.swapAt(tempIndex,i)
            tempIndex += 1
        }
    }
    
    return array
}

func moveElementToEnd1(_ array: inout [Int], _ toMove: Int) -> [Int] {
       // Write your code here.
   var tempIndex = 0

   for num in array where num != toMove {
       array[tempIndex] = num
       tempIndex += 1
   }

   for i in tempIndex..<array.count {
       array[i] = toMove
   }
   return array
}

func moveElementToEnd2(_ array: inout [Int], _ toMove: Int) -> [Int] {
    // Write your code here.
    var left = 0, right = array.count - 1
    while left < right {
        
        if array[right] == toMove {
            right -= 1
        } else if array[right] != toMove && array[left] == toMove {
            array.swapAt(left, right)
            left += 1
            right -= 1
        } else {
            left += 1
        }
    }
    
    return array
}

var arr = [2,0,1,2,2,0,2,3,4,2]
moveElementToEnd(&arr, 0)
