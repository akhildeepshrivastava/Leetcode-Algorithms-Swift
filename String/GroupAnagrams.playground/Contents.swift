import UIKit

var str = "Hello, playground"

//https://leetcode.com/problems/group-anagrams/submissions/

/*
 Given an array of strings, group anagrams together.

 Example:

 Input: ["eat", "tea", "tan", "ate", "nat", "bat"],
 Output:
 [
   ["ate","eat","tea"],
   ["nat","tan"],
   ["bat"]
 ]
 Note:

 All inputs will be in lowercase.
 The order of your output does not matter.
 */


func groupAnagrams(_ strs: [String]) -> [[String]] {
    var tempDict = [String: [String]]()

    for word in strs {

        tempDict[String(word.sorted()), default:[]].append(word)
    }

    return Array(tempDict.values)
}


func groupAnagrams1(_ words: [String]) -> [[String]] {

    var tempDict = [[Character]: [String]]()
    
    for word in words {
        let sortedWord = word.sorted()
        if var wordArray = tempDict[sortedWord] {
            wordArray.append(word)
            tempDict[sortedWord]  = wordArray
        } else {
            tempDict[sortedWord]  = [word]
        }
    }
    
    let result = tempDict.values.map { $0}
    
    return result
}


