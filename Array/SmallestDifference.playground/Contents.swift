import UIKit

var str = "Hello, playground"

/*
 
 Write a function that takes in two non-empty arrays of integers, finds the
 pair of numbers (one from each array) whose absolute difference is closest to
 zero, and returns an array containing these two numbers, with the number from
 the first array in the first position.

 Input
 
 arrayOne  = [-1, 5, 10, 20, 28, 3]
 arrayTwo = [26, 134, 135, 15, 17]
 
 Output - [28,26]

 */

//Time O(nlog(n)) + O(mlog()
func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
    
    // Write your code here.
    arrayOne.sort()
    arrayTwo.sort()
    
    var idxOne = 0, idxTwo = 0
    
    var smallest = Int.max
    var result = [Int]()
    while idxOne < arrayOne.count && idxTwo < arrayTwo.count {
        
        var current = 0
        let firstNum = arrayOne[idxOne]
        let seconfNum = arrayTwo[idxTwo]

        if firstNum < seconfNum {
            current = seconfNum - firstNum
            idxOne += 1
        } else if firstNum > seconfNum {
            current = firstNum - seconfNum
            idxTwo += 1
        } else {
            return [firstNum, seconfNum]
        }
        
        if current < smallest {
            smallest = current
            result = [firstNum, seconfNum]
        }
    }
    

    return result
}


var arr1 = [-1,5,10,20,28,3]
var arr2 = [26,134,135,15,17]
smallestDifference(arrayOne: &arr1, arrayTwo: &arr2)
