func solution(_ record:[String]) -> [String] {
    var idList: [String : String] = [:]
    var stack: [(id: String, command: String)] = []
    for log in record {
        let log: [String] = log.split(separator: " ").map({ String($0) })
        switch log[0] {
        case "Change":
            idList[log[1]] = log[2]
        default:
            if log[0] == "Enter" {
                idList[log[1]] = log[2]
            }
            stack.append((log[1], log[0]))
        }
    }
    return stack.map({ toText(idList[$0.id]!, $0.command) })
}

func toText(_ name: String, _ commad: String) -> String {
    switch commad {
    case "Enter":
        return name + "님이 들어왔습니다."
    default:
        return name + "님이 나갔습니다."
    }
}
