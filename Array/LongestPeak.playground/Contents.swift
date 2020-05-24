import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/longest-mountain-in-array/submissions/
 
 Let's call any (contiguous) subarray B (of A) a mountain if the following properties hold:

 B.length >= 3
 There exists some 0 < i < B.length - 1 such that B[0] < B[1] < ... B[i-1] < B[i] > B[i+1] > ... > B[B.length - 1]
 (Note that B could be any subarray of A, including the entire array A.)

 Given an array A of integers, return the length of the longest mountain.

 Return 0 if there is no mountain.

 Example 1:

 Input: [2,1,4,7,3,2,5]
 Output: 5
 Explanation: The largest mountain is [1,4,7,3,2] which has length 5.
 Example 2:

 Input: [2,2,2]
 Output: 0
 Explanation: There is no mountain.
 Note:

 0 <= A.length <= 10000
 0 <= A[i] <= 10000
 
 */
//Time - O(n), Space - O(1)
func longestPeak(array: [Int]) -> Int {
    // Write your code here.
    var longestPeakLength = 0
    var i = 1
    while i < array.count - 1 {
        
        if array[i-1] < array[i] && array[i] > array[i+1] {
            
            var currentPeakLength = 3
            var leftIdx = i-2
            while leftIdx >= 0, array[leftIdx] < array[leftIdx+1] {
                leftIdx -= 1
                currentPeakLength += 1
            }
            
            var rightIdx = i+2
            while rightIdx<array.count, array[rightIdx] < array[rightIdx-1] {
                rightIdx += 1
                currentPeakLength += 1
            }
            
            if currentPeakLength > longestPeakLength {
                longestPeakLength = currentPeakLength
            }
            
            i = rightIdx
            
        } else {
            i += 1
            continue
        }
    }
    
    return longestPeakLength
}

let array = [1, 2, 3, 4, 5, 1]
longestPeak(array: array)
