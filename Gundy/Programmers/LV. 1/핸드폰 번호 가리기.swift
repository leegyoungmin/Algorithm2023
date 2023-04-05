func solution(_ phone_number:String) -> String {
    guard phone_number.count > 4 else { return phone_number }
    var numbers: [String] = phone_number.reversed().map({ String($0) })
    var result: String = ""
    for _ in 1...numbers.count-4 {
        numbers.removeLast()
        result += "*"
    }
    while numbers.isEmpty == false {
        result += numbers.removeLast()
    }
    return result
}
