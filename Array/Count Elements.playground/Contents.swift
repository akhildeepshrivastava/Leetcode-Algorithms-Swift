import UIKit

var str = "Hello, playground"

// https://leetcode.com/explore/challenge/card/30-day-leetcoding-challenge/528/week-1/3289/

/*
 Given an integer array arr, count element x such that x + 1 is also in arr.

 If there're duplicates in arr, count them seperately.

  

 Example 1:

 Input: arr = [1,2,3]
 Output: 2
 Explanation: 1 and 2 are counted cause 2 and 3 are in arr.
 Example 2:

 Input: arr = [1,1,3,3,5,5,7,7]
 Output: 0
 Explanation: No numbers are counted, cause there's no 2, 4, 6, or 8 in arr.
 Example 3:

 Input: arr = [1,3,2,3,5,0]
 Output: 3
 Explanation: 0, 1 and 2 are counted cause 1, 2 and 3 are in arr.
 Example 4:

 Input: arr = [1,1,2,2]
 Output: 2
 Explanation: Two 1s are counted cause 2 is in arr.
 
 */

func countElements(_ arr: [Int]) -> Int {
    
    var tempDict = [Int:Int]()
    
    for item in arr {
        tempDict[item, default: 0] += 1
    }
    
    var result = 0
    for key in tempDict.keys {
        if tempDict.keys.contains(key+1) {
            result += tempDict[key]!
        }
    }
    
    return result
}

countElements([1,1,2,2])

func countElements1(_ arr: [Int]) -> Int {
    
    guard arr.count > 1 else {
        return 0
    }
    
    let sortedArray = arr.sorted()
    
    var left = 0, right = 1
    var count = 0
    
    while right < arr.count {
        
        if arr[right] == 1 + arr[left] {
            count += right - left
            left = right
            right += 1
        }
        else if sortedArray[right] == sortedArray[left] {
            right += 1
        } else {
            left = right
            right += 1
        }
                    
    }

    return count
}

