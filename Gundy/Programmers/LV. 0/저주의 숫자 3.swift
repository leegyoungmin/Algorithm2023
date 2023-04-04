func solution(_ n:Int) -> Int {
    var count: Int = 0
    var result: Int = 0
    while count < n {
        result += 1
        guard result.description.contains("3") == false,
              result % 3 != 0 else {
            continue
        }
        count += 1
    }
    return result
}
