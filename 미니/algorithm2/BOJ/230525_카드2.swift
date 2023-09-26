let N = Int(readLine()!)!
var cards = Array(1...N)
var temp = 0

if N == 1 { print(1) }
else {
    while true {
        cards[temp] = 0
        cards.append(cards[temp + 1])
        cards[temp + 1] = 0
        
        if cards[cards.count - 2] == 0 {
            print(cards.last!)
            break
        }
        
        temp += 2
    }
}
