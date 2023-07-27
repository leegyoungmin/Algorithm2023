func solution(_ n:Int, _ control:String) -> Int {
    var result = n
    control.forEach {
        switch $0 {
        case "w":
            result += 1
        case "a":
            result -= 10
        case "s":
            result -= 1
        default:
            result += 10
        }
    }
    return result
}
