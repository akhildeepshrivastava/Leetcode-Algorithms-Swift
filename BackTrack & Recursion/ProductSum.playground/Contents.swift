import UIKit

var str = "Hello, playground"

/*
 

 Write a function that takes in a array of integer arrays as input and returns its product sum.
 
 For example, the product sum of [a, b] is  a + b, the product sum of [a, [b, c]] is  a + 2(b+c)
 
input  = [5, 2, [7, -1], 3, [6, [-13, 8], 4]]

 output = 12
 calculated as: 5 + 2 + 2 * (7 - 1) + 3 + 2 * (6 + 3 * (-13 + 8) + 4)
 
 */

func productSum(_ array: [Any], multiplier: Int) -> Int {
    // Write your code here.
    var sum = 0
    for element in array {
        if let elementArry = element as? [Any] {
           sum += productSum(elementArry, multiplier: multiplier+1)
        } else if let element = element as? Int{
            sum += element
        }
    }
    return sum * multiplier
}
