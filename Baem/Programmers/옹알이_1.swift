func solution(_ babbling:[String]) -> Int {
    
    var count = 0
    
    for word in babbling {
        
        var str = String()
        
        for chr in word {
            str += String(chr)
            
            if str == "aya" {
                str = String()
                continue
            } else if str == "ye" {
                str = String()
                continue
            } else if str == "woo" {
                str = String()
                continue
            } else if str == "ma" {
                str = String()
                continue
            } else if str.count > 2 {
                break
            }
        }
        
        if str.isEmpty {
            count += 1
        }
    }
    return count
}
