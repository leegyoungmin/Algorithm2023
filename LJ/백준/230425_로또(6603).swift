
//로또(6603)
//https://www.acmicpc.net/problem/6603

/*
 로또번호 길이가 6이 될때까지 숫자를 추가한다.
 추가하는 숫자는 배열 s에서 하나씩 선택한다.
 */

var input = readLine()!.split(separator: " ").compactMap{ Int($0)! }
var s = [Int]()
var lotto = [Int]()

func solution(_ point: Int, _ depth: Int = 0) {
    
    if depth == 6 {
        lotto.forEach{ print($0, terminator: " ") }
        print("")
        return
    }
    
    for i in point..<s.count {
        if lotto.contains(s[i]) { continue }
        lotto.append(s[i])
        solution(i, depth + 1)
        lotto.removeLast()
    }
}

while input.first! != 0 {
    input.removeFirst()
    s = input
    solution(0)
    print("")
    input = readLine()!.split(separator: " ").compactMap{ Int($0)! }
}
