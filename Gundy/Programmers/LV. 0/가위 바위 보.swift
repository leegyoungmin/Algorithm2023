func solution(_ rsp:String) -> String {
    var result: String = ""
    for character in rsp {
        switch character {
        case "0":
            result += "5"
        case "2":
            result += "0"
        default:
            result += "2"
        }
    }
    return result
}
