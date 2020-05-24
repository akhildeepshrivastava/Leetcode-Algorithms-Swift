import UIKit

var str = "Hello, playground"

/*
 Sort Array using Bubble Sort
 
 https://www.geeksforgeeks.org/bubble-sort/
 */

//Time - O(n^2) | Space - O(1)
func bubbleSort1(array: inout [Int]) -> [Int] {
    
    var counter = 0
    var isSorted = false
    
    while !isSorted {
        isSorted = true
        
        for j in stride(from: 0 , to: array.count - 1 - counter, by: 1) {
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
                isSorted = false
            }
        }
        
        counter += 1
        
    }
    
    return array
}

func bubbleSort(array: inout [Int]) -> [Int] {
    
    let count =  array.count
    var isSorted = false

    for i in stride(from: 0, to: count - 1 , by: 1) {
        if !isSorted {
            isSorted = true
            for j in stride(from: 0 , to: count - 1 - i, by: 1) {
                if array[j] > array[j+1] {
                    array.swapAt(j, j+1)
                    isSorted = false
                }
            }
        }
        
    }
    
    return array
}
