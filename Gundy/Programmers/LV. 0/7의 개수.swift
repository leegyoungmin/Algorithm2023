func solution(_ array:[Int]) -> Int {
    var result: Int = 0
    for number in array {
        number.description.forEach({ if $0 == "7" { result += 1 } })
    }
    return result
}
