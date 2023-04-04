func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var result: [[Int]] = []
    var numbers: [Int] = num_list.reversed()
    while numbers.isEmpty == false {
        var element: [Int] = []
        for _ in 1...n {
            element.append(numbers.removeLast())
        }
        result.append(element)
    }
    return result
}
