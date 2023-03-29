func solution(_ n:Int) -> Int {
    var count: Int = n / 6 == 0 ? 1 : n / 6
    while (count * 6) % n != 0 {
        count += 1
    }
    return count
}
