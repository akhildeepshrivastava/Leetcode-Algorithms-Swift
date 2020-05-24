import UIKit

var str = "Hello, playground"


// https://leetcode.com/problems/count-square-submatrices-with-all-ones/

/*
 Given a string containing only three types of characters: '(', ')' and '*', write a function to check whether this string is valid. We define the validity of a string by these rules:

 Any left parenthesis '(' must have a corresponding right parenthesis ')'.
 Any right parenthesis ')' must have a corresponding left parenthesis '('.
 Left parenthesis '(' must go before the corresponding right parenthesis ')'.
 '*' could be treated as a single right parenthesis ')' or a single left parenthesis '(' or an empty string.
 An empty string is also valid.
 Example 1:
 Input: "()"
 Output: True
 Example 2:
 Input: "(*)"
 Output: True
 Example 3:
 Input: "(*))"
 Output: True
 */


func checkValidString(_ s: String) -> Bool {
    var starStack = [Int]()
    var parenthesiStack = [Int]()

    for (i,char) in s.enumerated() {
        if char == "(" {
            parenthesiStack.append(i)
        } else if char == "*" {
            starStack.append(i)
        } else {
            if !parenthesiStack.isEmpty {
                parenthesiStack.popLast()
            } else if !starStack.isEmpty {
                starStack.popLast()
            } else {
                return false
            }
        }
    }

    while !parenthesiStack.isEmpty {

        if starStack.isEmpty {
            return false
        } else if starStack.last! < parenthesiStack.last! {
            return false
        } else {
            starStack.popLast()
            parenthesiStack.popLast()
        }
    }

    return true
}


checkValidString("(*()")
checkValidString("(*))")
checkValidString("(((******))(*))")

