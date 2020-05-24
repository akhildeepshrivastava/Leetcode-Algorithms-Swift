import UIKit

var str = "Hello, playground"

/*
https://leetcode.com/problems/monotonic-array/

n array is monotonic if it is either monotone increasing or monotone decreasing.

An array A is monotone increasing if for all i <= j, A[i] <= A[j].  An array A is monotone decreasing if for all i <= j, A[i] >= A[j].

Return true if and only if the given array A is monotonic.

*/

func isMonotonic(array: [Int]) -> Bool {
    // Write your code here.
    
    guard array.count > 2 else {
        return true
    }
    
    var direction = 0
    
    for i in 0..<(array.count - 1) {
        if direction == 0 {
            if  array[i+1] - array[i] > 0 {
                direction = 1
            } else if array[i+1] - array[i] < 0 {
                direction = -1
            }
            continue
        }
        
        if direction == -1 {
            if !(array[i+1] <= array[i]) {
                return false
            }
        } else if direction == 1 {
            if !(array[i+1] >= array[i]) {
                return false
            }
        }
    }
    
    return true

}

let array = [-1, -5, -10, -1100, -1100, -1101, -1102, -9001]
isMonotonic(array: array)
