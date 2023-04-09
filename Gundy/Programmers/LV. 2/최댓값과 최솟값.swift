func solution(_ s:String) -> String {
    let result: [Int] = s.split(separator: " ").compactMap({ Int(String($0)) }).sorted()
    return "\(result.first!) \(result.last!)"
}
