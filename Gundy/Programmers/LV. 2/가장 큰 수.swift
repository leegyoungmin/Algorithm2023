func solution(_ numbers:[Int]) -> String {
    var numbers: String = numbers.map({ $0.description }).sorted(by: {
        $0 + $1 > $1 + $0
    }).joined()
    if numbers.first == "0" {
        return "0"
    }
    return numbers
}
