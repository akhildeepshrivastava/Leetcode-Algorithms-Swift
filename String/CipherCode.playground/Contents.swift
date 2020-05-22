import UIKit

var str = "Hello, playground"

/*
 

 Given a string of lowercase letters and a positive integer
 representing a shift, write a function that returns a new string by
 shifting every letter in the input string by n positions in the alphabet,
 where n is the shift.


 Note that letters should "wrap" around the alphabet; in other words, the
 letter z shifted by one returns the letter a
 
 Input -
 
 string = "xyz"
 shift = 2
 
 Output -
 
 "zab"
 
 Input -
 
 string = "abc"
 shift = 57
 
 Output -
 
 "fgh"
 
 
 */
func caesarCipherEncryptor(string: String, shift: UInt32) -> String {
    // Write your code here.
    let alphabets = Array("abcdefghijklmnopqrstuvwxyz")
    let shift = shift % 26
    var cipheredArray = [Character]()
    for char in string {
        
        if let index = alphabets.firstIndex(of: char){
            let newIdnex = (index + Int(shift)) % alphabets.count
            cipheredArray.append(alphabets[newIdnex])

        }
        
    }
    
    return String(cipheredArray)
}

func caesarCipherEncryptor1(string: String, shift: UInt32) -> String {
    // Write your code here.
    var cipheredArray = [Character]()
    let shift = shift % 26
    for char in string {
        let newCharAscii = char.unicodeScalars.first!.value + shift
        if newCharAscii <= 122 {
            cipheredArray.append(Character(UnicodeScalar(newCharAscii)!))
        } else {

            cipheredArray.append(Character(UnicodeScalar(96 + newCharAscii % 122)!))
        }
        
    }

    return String(cipheredArray)
}

caesarCipherEncryptor1(string: "abc", shift: 57)
caesarCipherEncryptor1(string: "xyz", shift: 2)
