func solution(_ num_list:[Int]) -> Int {
    let total = num_list.reduce(0, +)
    return num_list.reduce(1, *) < total * total ? 1 : 0
}
