func solution(_ hp:Int) -> Int {
    var result: Int = hp / 5
    var remainingHp: Int = hp % 5
    result += remainingHp / 3
    remainingHp = remainingHp % 3
    result += remainingHp
    return result
}
