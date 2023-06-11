func solution(_ food:[Int]) -> String {
    var arr = [Int]()
    
    for i in 1..<food.count {
        if food[i]/2 < 1 {
            continue
        }
        
        for j in 1...food[i]/2 {
            arr.append(i)
        }
    }
    
    return (arr + [0] + arr.reversed()).map { String($0) }.joined()
}
