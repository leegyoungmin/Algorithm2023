//옹알이(1)
//https://school.programmers.co.kr/learn/courses/30/lessons/120956

func solution(_ babbling: [String]) -> Int {
    let array: [String] = ["aya", "ye", "woo", "ma"]
    var newBabbling: [String] = []
    var text: String = ""
    
    babbling.forEach {
        text = $0
        for i in 0..<array.count {
            if text.contains(array[i]) == true {
                text = text.replacingOccurrences(of: array[i], with: "_")
                newBabbling.append(text)
            }
        }
    }
    
    var count: Int = 0
    for i in 0..<newBabbling.count {
        text = newBabbling[i].components(separatedBy: "_").joined()
        if text.isEmpty {
            count += 1
        }
    }
    
    return count
}

let result = solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"])
print(result)

/*
- replacingOccurrences 특정문자 대체 메서드
- 고차함수의 인자 $0 값은 수정해서 사용할 수 없다.
- 특정문자"ye"를 공백으로 변환 시 "wyeoo"의 경우 "woo"로 바뀌어 또다시 카운트되므로
 -> 임의 문자인 "_"로 변환
 -> "_"를 제거
 -> 제거 후 공백일 경우에만 count에 포함하여 해결하였다.
*/
