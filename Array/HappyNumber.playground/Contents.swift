import UIKit

var str = "Hello, playground"


//https://leetcode.com/problems/happy-number/submissions/


/*
 Write an algorithm to determine if a number n is "happy".

 A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.

 Return True if n is a happy number, and False if not.

 Example:

 Input: 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 */


func isHappy(_ n: Int) -> Bool {
    
    var tempSet = Set<Int>()
    var number = n
    
    
    while true {
        
        var newVal = 0
        while number > 0 {
            
            newVal += (number%10) * (number%10)
            print((number%10) * (number%10))

            number = number/10
        }
        
        if newVal == 1 {
            return true
        }
        
        let inserted = tempSet.insert(newVal).inserted
        
        if !inserted {
            return false
        }
        
        number = newVal
    }
}

func isHappy1(_ n: Int) -> Bool {
    var sum = n
    var container:Set<Int> = []
    while (sum != 1) {
        if(container.contains(sum)) {
            return false
        }
        container.insert(sum)
        print(sum)
        sum = getSumOfSquareOfDigits(sum)
    }
    return true
}

func getSumOfSquareOfDigits(_ num:Int) ->Int {
    var sum = 0
    var number = num
    while (number > 0) {
        sum = sum + (number % 10) * (number % 10)
        number = number/10
    }
    return sum
}

isHappy(7)
