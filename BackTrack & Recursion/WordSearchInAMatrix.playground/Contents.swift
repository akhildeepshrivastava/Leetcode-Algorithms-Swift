import UIKit

var str = "Hello, playground"


//https://leetcode.com/problems/word-search/

/*
 Given a 2D board and a word, find if the word exists in the grid.

 The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.

 Example:

 board =
 [
   ['A','B','C','E'],
   ['S','F','C','S'],
   ['A','D','E','E']
 ]

 Given word = "ABCCED", return true.
 Given word = "SEE", return true.
 Given word = "ABCB", return false.
  

 Constraints:

 board and word consists only of lowercase and uppercase English letters.
 1 <= board.length <= 200
 1 <= board[i].length <= 200
 1 <= word.length <= 10^3
 */

func exist(_ board: [[Character]], _ word: String) -> Bool {
    var vBoard = board
    let wordArray = Array(word)
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] == wordArray[0] && dfs(&vBoard,wordArray,i:i,j:j,characterAtIndex:0) {
                return true
            }
        }
    }
    
    return false
}

func dfs(_ board: inout [[Character]], _ word: [Character], i: Int, j: Int, characterAtIndex : Int) -> Bool {
    if characterAtIndex == word.count {
        return true
    }
    
    if i < 0 || i >= board.count || j < 0 || j >= board[i].count || board[i][j] != word[characterAtIndex] {
        return false
    }
    
    let temp = board[i][j]
    board[i][j] = "1"
    
    let found = dfs(&board,word,i:i+1,j:j,characterAtIndex:characterAtIndex+1) || dfs(&board,word,i:i-1,j:j,characterAtIndex:characterAtIndex+1) || dfs(&board,word,i:i,j:j+1,characterAtIndex:characterAtIndex+1) || dfs(&board,word,i:i,j:j-1,characterAtIndex:characterAtIndex+1)
    
    board[i][j] = temp
    return found
} 
