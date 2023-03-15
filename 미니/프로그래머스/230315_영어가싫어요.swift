import Foundation

func solution(_ numbers: String) -> Int64 {
    let dict = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
    var str = String()
    var chars = numbers
    var result = String()
    
    while chars.isEmpty == false {
        let char = chars.removeFirst()
        
        str.append(char)
        
        if let number = dict[str] {
            result.append(number.description)
            str = String()
        }
    }
    
    return Int64(result)!
}

let numbers = "onetwothreefourfivesixseveneightnine"
print(solution(numbers))
