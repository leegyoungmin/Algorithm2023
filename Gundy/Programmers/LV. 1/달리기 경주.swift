func solution(_ players:[String], _ callings:[String]) -> [String] {
    var playerList: [String] = players
    var indexList: [String : Int] = [:]
    for player in players {
        indexList[player] = indexList.count
    }
    for calling in callings {
        let index: Int = indexList[calling]!
        let player: String = playerList[index - 1]
        indexList[player, default: 0] += 1
        indexList[calling, default: 0] -= 1
        playerList[index - 1] = calling
        playerList[index] = player
    }
    return playerList
}
