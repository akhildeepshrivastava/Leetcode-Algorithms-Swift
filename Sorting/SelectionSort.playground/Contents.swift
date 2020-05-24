import UIKit

var str = "Hello, playground"

/*
 Sort Array using Selection Sort
 
 https://www.geeksforgeeks.org/selection-sort/
 
 */

//Time - O(n^2) | Space - O(1)
func selectionSort(array: inout [Int]) -> [Int] {
    // Write your code here.
    
    for i in 0..<array.count - 1 {
        
        var  min_idx = i
        for j in (i+1)..<array.count {
            if array[j] < array[min_idx] {
                min_idx = j
            }
        }
        
        array.swapAt(i, min_idx)
    }
    
    return array
}
