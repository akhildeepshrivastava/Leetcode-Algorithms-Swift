import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/prison-cells-after-n-days/

/*
 
 There are 8 prison cells in a row, and each cell is either occupied or vacant.

 Each day, whether the cell is occupied or vacant changes according to the following rules:

 If a cell has two adjacent neighbors that are both occupied or both vacant, then the cell becomes occupied.
 Otherwise, it becomes vacant.
 (Note that because the prison is a row, the first and the last cells in the row can't have two adjacent neighbors.)

 We describe the current state of the prison in the following way: cells[i] == 1 if the i-th cell is occupied, else cells[i] == 0.

 Given the initial state of the prison, return the state of the prison after N days (and N such changes described above.)

  

 Example 1:

 Input: cells = [0,1,0,1,1,0,0,1], N = 7
 Output: [0,0,1,1,0,0,0,0]
 Explanation:
 The following table summarizes the state of the prison on each day:
 Day 0: [0, 1, 0, 1, 1, 0, 0, 1]
 Day 1: [0, 1, 1, 0, 0, 0, 0, 0]
 Day 2: [0, 0, 0, 0, 1, 1, 1, 0]
 Day 3: [0, 1, 1, 0, 0, 1, 0, 0]
 Day 4: [0, 0, 0, 0, 0, 1, 0, 0]
 Day 5: [0, 1, 1, 1, 0, 1, 0, 0]
 Day 6: [0, 0, 1, 0, 1, 1, 0, 0]
 Day 7: [0, 0, 1, 1, 0, 0, 0, 0]

 Example 2:

 Input: cells = [1,0,0,1,0,0,1,0], N = 1000000000
 Output: [0,0,1,1,1,1,1,0]
  

 Note:

 cells.length == 8
 cells[i] is in {0, 1}
 1 <= N <= 10^9

*/

func prisonAfterNDays(_ cells: [Int], _ N: Int) -> [Int] {
    
    var curentCells = processNextDay(cells) // First and last cells will be always 0 after 1st day, So we need to find after how many days pattern after 1st day repeats
    
    let cellsAfterDayOne = curentCells
    
    var count = 0
    
    repeat {
        curentCells = processNextDay(curentCells)
        count += 1
    } while curentCells != cellsAfterDayOne
    
    let actualRotation = (N-1)%count
    
    if actualRotation == 0 {
        return curentCells
    }
    
    for _  in 1...actualRotation {
        curentCells = processNextDay(curentCells)
    }
    
    return curentCells
}


func processNextDay(_ cells: [Int]) -> [Int] {
    var nextDayCell = Array(repeating: 0, count:cells.count)
    
    for i in 1..<cells.count-1 {
        if cells[i-1] == cells[i+1] {
            nextDayCell[i] = 1
        }
    }
    
    return nextDayCell
}

