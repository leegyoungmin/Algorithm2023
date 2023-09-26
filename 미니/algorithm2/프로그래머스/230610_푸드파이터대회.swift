func solution(_ food: [Int]) -> String {
    var front = 1
    var result = String()
    
    while food.count != front {
        var current = food[front]
        
        if current < 2 { front += 1; continue }
        
        for _ in 0..<(current / 2) {
            result.append(front.description)
        }
        
        front += 1
    }
    
    return result + "0" + result.reversed()
}
