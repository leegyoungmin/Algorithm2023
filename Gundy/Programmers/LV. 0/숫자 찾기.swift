func solution(_ num:Int, _ k:Int) -> Int {
    var index: Int = 0
    for number in num.description {
        index += 1
        if String(number) == k.description {
            return index
        }
    }
    return -1
}
