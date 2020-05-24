import UIKit

var str = "Hello, playground"


// https://leetcode.com/problems/product-of-array-except-self/

/*
 Given an array nums of n integers where n > 1,  return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

 Example:

 Input:  [1,2,3,4]
 Output: [24,12,8,6]
 Constraint: It's guaranteed that the product of the elements of any prefix or suffix of the array (including the whole array) fits in a 32 bit integer.

 Note: Please solve it without division and in O(n).
 */

func productExceptSelf(_ nums: [Int]) -> [Int] {
    
    var result = [Int]()
    
    var product = 1
    for num in nums {
        result.append(product)
        product *= num
    }
    
    product = 1
    for i in (0..<result.count).reversed() {
        result[i] *= product
        product *= nums[i]
    }
    
    return result
}

productExceptSelf([1,2,3,4])
