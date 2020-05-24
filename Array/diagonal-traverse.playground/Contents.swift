import UIKit

var str = "Hello, playground"

func zigZagTraverse(array: [[Int]]) -> [Int] {
    // Write your code here.
    var result = [Int]()
    
    var row = 0, col = 0
    var goingDown = true
    
    while row < array.count, col < array[0].count {
        result.append(array[row][col])
        
        if goingDown {
            
            if col == 0 || row == array.count - 1 {
                goingDown = false
                if row == array.count - 1 {
                    col += 1
                } else {
                    row += 1
                }
            } else {
                row += 1
                col -= 1
            }
        } else {
            
            if row == 0 || col == array[0].count - 1 {
                goingDown = true
                if col == array[0].count - 1 {
                    row += 1
                } else {
                    col += 1
                }
            } else {
                row -= 1
                col += 1
            }
            
            
        }
    }
    
    return result
}
