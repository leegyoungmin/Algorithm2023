func solution(_ stones:[Int], _ k:Int) -> Int {
    var left = 1
    var right = 200_000_000
    
    while left < right {
        let mid = (left + right) / 2
        var zeroCount = 0
        
        for stone in stones {
            print(stone, mid)
            if stone - mid <= .zero {
                zeroCount += 1
                
                if zeroCount >= k {
                    break
                }
            } else {
                zeroCount = .zero
            }
        }
        
        if zeroCount >= k {
            right = mid
        } else {
            left = mid + 1
        }
    }
    
    return left
}
