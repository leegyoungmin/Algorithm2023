import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    
    var maxOfMax = 0
    var maxOfMin = 0
    
    for size in sizes {
        let sizeMax = max(size[0], size[1])
        let sizeMin = min(size[0], size[1])
        
        if maxOfMax < sizeMax {
            maxOfMax = sizeMax
        }
        
        if maxOfMin < sizeMin {
            maxOfMin = sizeMin
        }
        
    }
    
    return maxOfMax * maxOfMin
}
