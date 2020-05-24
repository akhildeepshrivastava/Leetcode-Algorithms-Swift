import UIKit

var str = "Hello, playground"
/*
 https://leetcode.com/problems/spiral-matrix/
 
 Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.

 Example 1:

 Input:
 [
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
 ]
 Output: [1,2,3,6,9,8,7,4,5]
 Example 2:

 Input:
 [
   [1, 2, 3, 4],
   [5, 6, 7, 8],
   [9,10,11,12]
 ]
 Output: [1,2,3,4,8,12,11,10,9,5,6,7]
 
 */
//Time - O(n), Space O(n) , n numbe rof element in array
func spiralTraverse(array: [[Int]]) -> [Int] {
    
    // Write your code here.
    guard array.count > 0 else {
        return [Int]()
    }
    
    var result = [Int]()
    var startRow = 0, endRow = array.count - 1
    var startCol = 0, endCol = array[0].count - 1
    
    while startRow <= endRow && startCol <= endCol {
        for i in stride(from: startCol, through: endCol, by: 1) {
            result.append(array[startRow][i])
        }
        

        for i in  stride(from: startRow+1, through: endRow, by: 1) {
            result.append(array[i][endCol])
        }
        
        for i in stride(from: endCol-1, through: startCol, by: -1){
           if startRow == endRow {
                break
            }
            result.append(array[endRow][i])
        }

        for i in stride(from: endRow-1, through: startRow+1, by: -1) {
            if startCol == endCol {
                break
            }
            result.append(array[i][startCol])
        }
        
        startRow += 1
        endRow -= 1
        
        startCol += 1
        endCol -= 1
    }
    
    return result
}
