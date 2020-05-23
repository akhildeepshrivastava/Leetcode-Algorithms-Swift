import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/generate-parentheses/

/*
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

 For example, given n = 3, a solution set is:

 [
   "((()))",
   "(()())",
   "(())()",
   "()(())",
   "()()()"
 ]
 */

func generateParenthesis(_ n: Int) -> [String] {
    var result = [String]()
    generateParenthesisHelper("", &result, open: 0, close: 0, n: n)
    return result
}

func generateParenthesisHelper(_ s: String, _ result: inout [String], open: Int, close: Int, n: Int)
{
    if s.count == 2*n {
        result.append(s)
        return
    }

    if open < n {
        generateParenthesisHelper("\(s)(", &result, open: open + 1, close: close, n: n)
    }

    if close < open {
        generateParenthesisHelper("\(s))", &result, open: open , close: close + 1, n: n)
    }
}
