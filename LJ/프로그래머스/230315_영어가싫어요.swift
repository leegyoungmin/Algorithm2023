// 영어가싫어요
// https://school.programmers.co.kr/learn/courses/30/lessons/120894

func solution(_ numbers:String) -> Int64 {
    let array = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    var word = ""
    var result = ""
    for char in numbers {
        word += String(char)
        if array.contains(word) {
            let index = array.firstIndex(of: word)
            result += "\(index!)"
            word = ""
        }
    }
    return Int64(result)!
}
