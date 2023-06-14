//모의고사
//https://school.programmers.co.kr/learn/courses/30/lessons/42840

func solution(_ answers:[Int]) -> [Int] {
    var studentA = Array(repeating: 0, count: answers.count)
    var studentB = [2, 1, 2, 3, 2, 4, 2, 5]
    var studentC = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var score = Array(repeating: 0, count: 3)
    var result = [Int]()
    
    for i in 0..<answers.count {
        if (i + 1) % 5 == 0 {
            studentA[i] = 5
        } else {
            studentA[i] = (i + 1) % 5
        }
        
        if i == studentB.count-1 {
            studentB += studentB
        }
        
        if i == studentC.count-1 {
            studentC += studentC
        }

        if answers[i] == studentA[i] { score[0] += 1 }
        if answers[i] == studentB[i] { score[1] += 1 }
        if answers[i] == studentC[i] { score[2] += 1 }
    }
    let maxValue: Int = score.max()!
    
    for i in 0..<score.count {
        if score[i] == maxValue {
            result.append(i+1)
        }
    }
    
    return result.sorted(by: <)
}

/*
 1번수포자 : (index+1)을 5로 나눈 나머지
 2번수포자 : index가 0, 2, 4 짝수값이면 2, 홀수면 1 3 4 5 반복
 3번수포자 : 3 1 2 4 5 두번씩 반복
 
 오답 1:
 studentA[i] = (i + 1) % 5 만 작성함
 studentA index 5로 나누어 떨어지는 경우 답으로 0이 제출됨
 
 */
