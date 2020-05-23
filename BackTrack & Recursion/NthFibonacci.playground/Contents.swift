import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/fibonacci-number/

/*
 The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,

 F(0) = 0,   F(1) = 1
 F(N) = F(N - 1) + F(N - 2), for N > 1.
 Given N, calculate F(N).

  

 Example 1:

 Input: 2
 Output: 1
 Explanation: F(2) = F(1) + F(0) = 1 + 0 = 1.
 Example 2:

 Input: 3
 Output: 2
 Explanation: F(3) = F(2) + F(1) = 1 + 1 = 2.
 Example 3:

 Input: 4
 Output: 3
 Explanation: F(4) = F(3) + F(2) = 2 + 1 = 3.
  

 Note:

 0 ≤ N ≤ 30.
 */

//Time - O(n) SPcae - O(1)
func fib3(_ n: Int) -> Int {
    
    var lastTwo = [0,1]
    var counter = 2

    while counter <= n {
        let next = lastTwo[0] + lastTwo[1]
        lastTwo[0] = lastTwo[1]
        lastTwo[1] = next

        counter += 1
    }

    return n >= 1 ? lastTwo[1] : lastTwo[0]

}


//Time - O(2^n) SPcae - O(n)
func fib(_ n: Int) -> Int {
    if n == 0 {
        return 0
    }
    
    if n == 1 {
        return 1
    }
    
    return fib(n-1) + fib(n-2)
}


//Time - O(n) SPcae - O(n)
func fib1(_ n: Int) -> Int {
    var memoize = [0: 0, 1:1]
    if  memoize.keys.contains(n) {
        return memoize[n]!
    } else {
            memoize[n] = fib(n-1) + fib(n-2)
    }

    return memoize[n]!
}

//Time - O(n) SPcae - O(n)
func fib2(_ n: Int) -> Int {
    if n == 0 || n == 1 {
        return n
    }
    
    var table = Array(repeating: 0, count: n+1)
    table[0] = 0
    table[1] = 1

    for i in 2..<n+1 {
        table[i] = table[i-1] + table[i-2]
    }

    return table[n]
}
