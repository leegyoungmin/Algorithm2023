func solution(_ my_string:String) -> Int {
    let numbers: [Int] = my_string.compactMap({ Int(String($0)) })
    return numbers.reduce(0, +)
}
