func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var round: Int = 0
    var player: Int = a
    var rival: Int = b
    while player != rival {
        round += 1
        player = (player + 1) / 2
        rival = (rival + 1) / 2
    }
    return round
}
