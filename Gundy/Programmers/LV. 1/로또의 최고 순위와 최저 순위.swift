func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let winningNumbers: Set<Int> = Set(win_nums)
    var zeroCount: Int = 0
    var rank: Int = 7
    for number in lottos {
        if number == 0 {
            zeroCount += 1
        } else {
            if winningNumbers.contains(number) {
                rank -= 1
            }
        }
    }
    let maximumRank: Int = rank - zeroCount
    return [maximumRank == 7 ? 6 : maximumRank, rank == 7 ? 6 : rank]
}
