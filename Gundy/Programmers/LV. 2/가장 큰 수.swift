func solution(_ numbers:[Int]) -> String {
    let numbers = numbers.map(String.init).sorted(by: { $0 + $1 > $1 + $0 }).joined()
    return numbers.first == "0" ? "0" : numbers
}
