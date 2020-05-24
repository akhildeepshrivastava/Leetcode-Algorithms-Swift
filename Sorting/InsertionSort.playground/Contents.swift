import UIKit

var str = "Hello, playground"

/*
Sort Array using Inserstion Sort

https://www.geeksforgeeks.org/insertion-sort/
 
*/

//Time - O(n^2) | Space - O(1)
func insertionSort(array: inout [Int]) -> [Int] {
    // Write your code here.
    for i in 1..<array.count {
        var j = i
        
        while j > 0 && array[j] < array[j-1] {
            array.swapAt(j, j-1)
            j -= 1
        }
    }
    return array
}
