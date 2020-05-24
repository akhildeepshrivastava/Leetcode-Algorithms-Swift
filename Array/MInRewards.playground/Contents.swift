import UIKit

var str = "Hello, playground"

/*

 You have a list of student scores on the final exam in a particular order (not
 necessarily sorted), and you want to reward your students. You decide to
 giving them arbitrary rewards following two rules:

    1) All students must receive at least one reward.

    2) Any given student must receive strictly more rewards than an adjacent
    student (a student immediately to the left or to the right) with a lower
    score and must receive strictly fewer rewards than an adjacent student with
    a higher score.
 

 Write a function that takes in a list of scores and returns the minimum number
 of rewards that you must give out to students to satisfy the two rules.

 You can assume that all students have different scores; in other words, the
 scores are all unique.

 Input -
 
 Scores = [8, 4, 2, 1, 3, 6, 7, 9, 5]

 Output -
 
 25  you would give out the following rewards: [4, 3, 2, 1, 2, 3, 4, 5, 1]
 */
func minRewards(_ scores: [Int]) -> Int {
    // Write your code here.
    var rewards = Array(repeating:1, count: scores.count)
    
    for i in stride(from: 1, to: scores.count, by: 1) {
        if scores[i] > scores[i-1] {
            rewards [i] = rewards [i-1] + 1
        }
    }
    
    print(rewards)
    
    for i in stride(from: scores.count - 2, through: 0 , by: -1) {
        if scores[i] > scores[i + 1] {
            rewards[i] = max(rewards[i],rewards[i+1] + 1)
        }
    }
    print(rewards)


    return rewards.reduce(0) { $0 + $1 }
}

minRewards([8, 4, 2, 1, 3, 6, 7, 9, 5])
