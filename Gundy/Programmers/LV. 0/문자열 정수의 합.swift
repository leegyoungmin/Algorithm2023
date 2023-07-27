func solution(_ num_str:String) -> Int {
    return num_str.map(String.init).compactMap(Int.init).reduce(0, +)
}
