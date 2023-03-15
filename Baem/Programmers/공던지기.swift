func solution(_ numbers:[Int], _ k:Int) -> Int {
    var arrays = numbers

    for _ in 1...k - 1 {
        arrays.append(arrays.removeFirst())
        arrays.append(arrays.removeFirst())
    }

    return arrays.first!
}
