func solution(_ user_id:[String], _ banned_id:[String]) -> Int {
    var result = Set<Set<String>>()
    func recursion(_ ids: [String], currentIndex: Int, filteredID: Set<String>) {
        guard currentIndex < banned_id.count else {
            result.insert(filteredID)
            return
        }
        let target = banned_id[currentIndex]
        for index in 0..<ids.count {
            if isValid(of: ids[index], with: target) {
                var nextIDs = [String]()
                if index > 0 {
                    nextIDs += ids[0..<index]
                }
                if index < ids.count - 1 {
                    nextIDs += ids[index + 1..<ids.count]
                }
                recursion(nextIDs, currentIndex: currentIndex + 1, filteredID: filteredID.union([ids[index]]))
            }
        }
    }
    recursion(user_id, currentIndex: 0, filteredID: [])
    return result.count
}

func isValid(of userID: String, with bannedID: String) -> Bool {
    guard userID.count == bannedID.count else {
        return false
    }
    let userID = userID.map(String.init)
    let bannedID = bannedID.map(String.init)
    for index in 0..<userID.count {
        guard bannedID[index] != "*" else {
            continue
        }
        if userID[index] != bannedID[index] {
            return false
        }
    }
    return true
}
