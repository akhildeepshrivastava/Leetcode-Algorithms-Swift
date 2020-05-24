import UIKit

var str = "Hello, playground"

/*
 
 Sort Array using Merge Sort
 
 https://www.geeksforgeeks.org/merge-sort/
 
 */
// O(nlog(n)) Time | O(nlog(n)) Space
func mergeSort(_ array: [Int]) -> [Int] {
       // Write your code here.
    if array.count <= 1 {
        return array
    }
    
    let middleIndex = array.count / 2
    
    let leftHalf = mergeSort(Array(array[0..<middleIndex]))
    let rightHalf =  mergeSort(Array(array[middleIndex..<array.count]))

    return mergeSortedArrays(leftHalf: leftHalf, rightHalf: rightHalf)
}


func mergeSortedArrays(leftHalf: [Int], rightHalf: [Int])-> [Int] {
    var sortedArray = Array(repeating: 0, count: leftHalf.count + rightHalf.count)
    var i = 0 ,j = 0, k = 0
    
    while i < leftHalf.count, j < rightHalf.count {
        if leftHalf[i] <= rightHalf[j] {
            sortedArray[k] = leftHalf[i]
            i += 1
        } else {
            sortedArray[k] = rightHalf[j]
            j += 1
        }
        
        k += 1
    }
    
    while i < leftHalf.count {
        sortedArray[k] = leftHalf[i]
        i += 1
        k += 1
    }
    
    while j < rightHalf.count {
        sortedArray[k] = rightHalf[j]
        j += 1
        k += 1
    }
    
    return sortedArray
}


var array = [1,3,2]
mergeSort(array)

