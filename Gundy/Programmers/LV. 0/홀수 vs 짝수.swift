func solution(_ num_list:[Int]) -> Int {
    var totalOdd = 0
    var totalEven = 0
    for index in 0..<num_list.count {
        if index % 2 == 0 {
            totalOdd += num_list[index]
        } else {
            totalEven += num_list[index]
        }
    }
    return totalOdd > totalEven ? totalOdd : totalEven
}
