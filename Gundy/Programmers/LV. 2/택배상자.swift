func solution(_ order:[Int]) -> Int {
    var origin = Array(stride(from: order.count, through: 1, by: -1))
    var temporary = [Int]()
    var index = 0
    while index < order.count {
        let target = order[index]
        while origin.isEmpty == false,
              origin.last! < target {
            temporary.append(origin.removeLast())
        }
        if origin.last == target {
            origin.removeLast()
            index += 1
        } else if temporary.last == target {
            temporary.removeLast()
            index += 1
        } else {
            break
        }
    }
    return index
}
