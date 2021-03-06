import UIKit

var str = "Hello, playground"

/*
 
 You are given a string s containing lowercase English letters, and a matrix shift, where shift[i] = [direction, amount]:

 direction can be 0 (for left shift) or 1 (for right shift).
 amount is the amount by which string s is to be shifted.
 A left shift by 1 means remove the first character of s and append it to the end.
 Similarly, a right shift by 1 means remove the last character of s and add it to the beginning.
 Return the final string after all operations.

  

 Example 1:

 Input: s = "abc", shift = [[0,1],[1,2]]
 Output: "cab"
 Explanation:
 [0,1] means shift to left by 1. "abc" -> "bca"
 [1,2] means shift to right by 2. "bca" -> "cab"
 Example 2:

 Input: s = "abcdefg", shift = [[1,1],[1,1],[0,2],[1,3]]
 Output: "efgabcd"
 Explanation:
 [1,1] means shift to right by 1. "abcdefg" -> "gabcdef"
 [1,1] means shift to right by 1. "gabcdef" -> "fgabcde"
 [0,2] means shift to left by 2. "fgabcde" -> "abcdefg"
 [1,3] means shift to right by 3. "abcdefg" -> "efgabcd"
 
 */


func stringShift(_ s: String, _ shift: [[Int]]) -> String {
    
    var rotate = 0
    
    for i in 0..<shift.count {
        rotate += (shift[i][0] == 0) ? -shift[i][1] : shift[i][1]
    }
    
    rotate = rotate % s.count
    print(rotate)
    let sArr = Array(s)
    if rotate > 0 {
        return String(sArr[sArr.count-rotate..<sArr.count] + sArr[0..<sArr.count-rotate])
    } else {
        return String(sArr[(-rotate)..<sArr.count] + sArr[0..<(-rotate)])
    }
}


stringShift("wpdhhcj", [[0,7],[1,7],[1,0],[1,3],[0,3],[0,6],[1,2]])
