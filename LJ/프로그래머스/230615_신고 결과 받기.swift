//신고 결과 받기
//https://school.programmers.co.kr/learn/courses/30/lessons/92334

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var mailReceiveCount = Array(repeating: 0, count: id_list.count)    //결과
    var reportDictionary = [String: Set<String>]()                      //id(신고당함) : id(신고함)
    var mailList = [String]()
    
    id_list.forEach {
        reportDictionary[$0] = []
    }

    for text in report {
        let input = text.split(separator: " ").map{ String($0) }
        reportDictionary[input[1]]?.insert(input[0])
    }

    reportDictionary.forEach {
        if $0.value.count >= k {
            mailList += $0.value.map{ id in
                return id
            }
        }
    }
    
    mailList.forEach {
        let index = id_list.firstIndex(of: $0)!
        mailReceiveCount[index] += 1
    }
    
    return mailReceiveCount
}

/*
 이용자의 ID가 담긴 문자열 배열: id_list
 각 이용자가 신고한 ID 정보가 담긴 문자열 배열: report
 정지 기준이 되는 신고 횟수: k
 
 reportDictionary -> id(신고당함) : id(신고함)
 ["frodo": Set(["muzi", "apeach"]),
 "neo": Set(["muzi", "frodo"]),
 "muzi": Set(["apeach"]),
 "apeach": Set([])]
 
 mailList -> ["muzi", "apeach", "frodo", "muzi"]
 
 //오답 1: 시간초과
 //User객체 만들어서 id, id의 index, 나를 신고한id  함께 사용
 //메일 받은 사람 찾으려면 결국엔 User타입 배열을 순회해야 함
 //딕셔너리 [String: Set<String>] == [id(신고당함) : id(신고함)]로 해결
 
 print(solution2(["muzi", "frodo", "apeach", "neo"],
                ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"],
                2)
 )
 
final class User {
    let id: String
    let index: Int
    var receive = Set<String>()
    
    init(id: String, index: Int) {
        self.id = id
        self.index = index
    }
}

func solution2(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var users = [User]()
    for index in 0..<id_list.count {
        let user = User(id: id_list[index], index: index)
        users.append(user)
    }

    for text in report {
        let input = text.split(separator: " ").map{ String($0) }
        users.forEach {
            if $0.id == input[1] {
                $0.receive.insert(input[0])
            }
        }
    }
    
    var mailList = [String]()
    var mailReceiveCount = Array(repeating: 0, count: id_list.count)
    
    users.forEach {
        if $0.receive.count >= k { //내가 신고받은 횟수가 k회 이상이면
            mailList += $0.receive.map{ $0 } //메일받을사람 추가
        }
    }
    
    mailList.forEach {
        for i in 0..<users.count {
            if users[i].id == $0 {
                mailReceiveCount[users[i].index] += 1
            }
        }
    }
    
    return mailReceiveCount
}
*/
