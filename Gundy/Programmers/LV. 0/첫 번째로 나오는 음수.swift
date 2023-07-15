func solution(_ num_list:[Int]) -> Int {
    var result = -1
    for index in 0..<num_list.count {
        guard num_list[index] >= 0 else {
            result = index
            break
        }
    }
    return result
}
