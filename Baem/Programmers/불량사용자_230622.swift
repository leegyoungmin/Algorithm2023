import Foundation

func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var bannedList = [[Int]]()
    
    for bannedName in banned_id {
        let spell = Array(bannedName)
        var nowBannedList = [Int]()
//        print("spell : ", spell)
        
        for (index, userID) in user_id.enumerated() {
            let userIDSpell = Array(userID)
            var isSame = 0
            
            if spell.count != userIDSpell.count {
                continue
            }
            
            for index in 0..<userIDSpell.count {
                if spell[index] == "*" {
                    isSame += 1
                    continue
                } else if spell[index] == userIDSpell[index] {
                    isSame += 1
                    continue
                }
                break
            }
            
            if isSame == userIDSpell.count {
                nowBannedList.append(index)
            }
        }
        
        bannedList.append(nowBannedList)
    }
    
    print(bannedList)
    
    var result = 0
    var isUsed = Array(repeating: false, count: user_id.count)
    
    //true로 바꾸면 사용된 것
    var resultSet = Set<String>()
    
    func recursion(depth: Int) {
        if bannedList.count <= depth {
            var list = ""
            for (index, bool) in isUsed.enumerated() {
                if bool {
                    list += String(index)
                }
            }
            resultSet.insert(list)
            
            return
        }
        
        for index in bannedList[depth] {
            if isUsed[index] {
                continue
            } else {
                isUsed[index] = true
                recursion(depth: depth + 1)
                isUsed[index] = false
            }
            
        }
        
        
    }
    
    recursion(depth: 0)
    
    
    return resultSet.count
}


/*
 1. banned_id 각각에 해당되는 유저 아이디 index 심어준다.
 2. 그 조합을 back tracking 으로 검사한다.
 */

print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "abc1**"]))
print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["*rodo", "*rodo", "******"]))
print(solution(["frodo", "fradi", "crodo", "abc123", "frodoc"], ["fr*d*", "*rodo", "******", "******"]))
