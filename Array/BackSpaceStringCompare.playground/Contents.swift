import UIKit

var str = "Hello, playground"

/*
 https://leetcode.com/problems/backspace-string-compare/
 
 Given two strings S and T, return if they are equal when both are typed into empty text editors. # means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.

 Example 1:

 Input: S = "ab#c", T = "ad#c"
 Output: true
 Explanation: Both S and T become "ac".
 Example 2:

 Input: S = "ab##", T = "c#d#"
 Output: true
 Explanation: Both S and T become "".
 Example 3:

 Input: S = "a##c", T = "#a#c"
 Output: true
 Explanation: Both S and T become "c".
 Example 4:

 Input: S = "a#c", T = "b"
 Output: false
 Explanation: S becomes "c" while T becomes "b".
 Note:

 1 <= S.length <= 200
 1 <= T.length <= 200
 S and T only contain lowercase letters and '#' characters.
 */

func backspaceCompare(_ S: String, _ T: String) -> Bool {
        
    var sStack = [Character]()
    var tStack = [Character]()
    
    for char in S {
        if char == "#" {
            if !sStack.isEmpty {
                _ = sStack.popLast()
            }
        }else {
            sStack.append(char)
        }
    }

    for char in T {
        if char == "#" {
            if !tStack.isEmpty {
                _ = tStack.popLast()
            }
        } else {
            tStack.append(char)
        }
    }
    
    return sStack == tStack
}

backspaceCompare("y#fo##f", "y#f#o##f")
