import UIKit

var str = "Hello, playground"

/*
 Sort Array using Quick Sort
 
 First element as pivot
 
 https://www.geeksforgeeks.org/quick-sort/
 
 */

//Time - O(nlogn) avg case, O(n^2) worst case
func quickSort(_ array: inout [Int]) -> [Int] {
    // Write your code here.
    quickSortHelper(&array,0,array.count-1)
    return array
}

func quickSortHelper(_ array: inout [Int], _ start: Int, _ end:  Int) {
    
    if start >= end { return }
    
    let pivotIndex = pivot(&array, start: start, end: end)
    
    quickSortHelper(&array, start, pivotIndex-1)
    quickSortHelper(&array, pivotIndex+1, end)

}

func pivot(_ array: inout [Int], start: Int, end: Int) -> Int {
    
    let pivot = array[start]
    var left = start + 1
    var right = end
    
    while left <= right {
        
        if array[left] <= pivot {
            left += 1
        }
        
        if array[right] >= pivot {
            right -= 1
        }
        
        if left < right && (array[left] > pivot &&  array[right] < pivot)  {
            array.swapAt(left, right)
        }
    }
    
    
    array.swapAt(start, right)
    
    return right
}

var arr =  [-4, 5, 10, 8, -10, -6, -4, -2, -5, 3, 5, -4, -5, -1, 1, 6, -7, -6, -7, 8]
quickSort(&arr)
