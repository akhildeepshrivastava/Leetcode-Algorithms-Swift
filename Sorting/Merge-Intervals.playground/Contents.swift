import UIKit

var str = "Hello, playground"
/*
 https://leetcode.com/problems/merge-intervals/
 
 Given a collection of intervals, merge all overlapping intervals.

 Example 1:

 Input: [[1,3],[2,6],[8,10],[15,18]]
 Output: [[1,6],[8,10],[15,18]]
 Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
 Example 2:

 Input: [[1,4],[4,5]]
 Output: [[1,5]]
 Explanation: Intervals [1,4] and [4,5] are considered overlapping.
 
 */


func merge(_ intervals: [[Int]]) -> [[Int]] {
    guard intervals.count > 1 else {
        return intervals
    }
    let sortedIntervals = intervals.sorted{$0[0] < $1[0]}

    var result = [sortedIntervals[0]]

    for i in 1..<sortedIntervals.count {

        let last = result.last!
        let current = sortedIntervals[i]
        if current[0] <= last[1]  {
            let end = max(last[1], current[1])
            result.popLast()
            result.append([last[0],end])
        } else {
            result.append(sortedIntervals[i])
        }
    }

    return result
}
