
func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    var reportedDictionary = [String:Set<String>]()
    var reportResult = Array(repeating: 0, count: id_list.count)
    
    for name in id_list {
        reportedDictionary[name] = []
    }
    
    for reportValue in report {
        let reportInfo = reportValue.split(separator: " ").map { String($0) }
        
        reportedDictionary[reportInfo[1]]?.insert(reportInfo[0])
    }
    
    for reported in reportedDictionary {
        if reported.value.count >= k {
            for (index, name) in id_list.enumerated() {
                if reported.value.contains(name) {
                    reportResult[index] += 1
                }
            }
        }
    }
    
    return reportResult
}

print(solution(["muzi", "frodo", "apeach", "neo"], ["muzi frodo","apeach frodo","frodo neo","muzi neo","apeach muzi"], 2))

// foreach 보단 for 를 사용하자!
