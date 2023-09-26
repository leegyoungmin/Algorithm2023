import Foundation

func solution(_ babbling:[String]) -> Int {
    var count: Int = 0
    let dict = ["aya", "ye", "woo", "ma"]
    
    for babble in babbling {
        var value = String()
        var result = String()
        
        for char in babble {
            value.append(char)
            
            if dict.contains(value) {
                result.append(value)
                value = ""
            }
        }
        
        if result == babble {
            count += 1
        }
    }
    
    return count
}

let babbs = ["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]

print(solution(babbs))
