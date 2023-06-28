// https://school.programmers.co.kr/learn/courses/30/lessons/84512
//재귀 사용하면??? 많이될거같은데..

func solution(_ word:String) -> Int {
    var count = 0
    var arr = Array(repeating: "", count: 5)
    let char = ["A", "E", "I", "O", "U"]
    var result = 0
    
    func recursion(_ depth: Int) {
        if result != 0 { // 재귀진행되는것 정지
            return
        }
        
        if arr.joined() == word {
            result = count
            return
        } else if depth == 5 {
            return
        }
        
        for i in char {
            arr[depth] = i
            count += 1
            recursion(depth + 1)
            arr[depth] = ""
        }
    }
    
    recursion(0)
    
    return result
}

print(solution("AAAAE"))
