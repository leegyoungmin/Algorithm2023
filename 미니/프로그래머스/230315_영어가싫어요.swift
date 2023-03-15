import Foundation

func solution(_ numbers: String) -> Int64 {
    let dict = ["zero": 0, "one": 1, "two": 2, "three": 3, "four": 4, "five": 5, "six": 6, "seven": 7, "eight": 8, "nine": 9]
    var str = String()
    var chars = numbers
    var ints: [Int] = []
    
    while chars.isEmpty == false {
        let char = chars.removeFirst()
        
        str.append(char)
        
        if dict.keys.contains(str) {
            let value = dict[str, default: -1]
            ints.append(value)
            str = String()
        }
    }
    
    let result = Int64(ints.filter { $0 != -1 }.map { String($0) }.joined())!
    return result
}

let numbers = "onetwothreefourfivesixseveneightnine"
print(solution(numbers))
