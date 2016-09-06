import Foundation

class Solution {
    func isPalindrome(s: String) -> Bool {
        let lowString = s.lowercaseString
        let string = lowString.utf8.filter{ char in
            let isaToz = char >= 97 && char <= 122
            let is0To9 = char >= 48 && char <= 57
            return isaToz || is0To9
        }
        return string == string.reverse()
    }
}