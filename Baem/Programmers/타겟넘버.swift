import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {

    var results = [Int]()
    var resultCount = 0
    
    for i in numbers {
        if results.isEmpty {
            results.append(i)
            results.append(-i)
            continue
        }
        
        let a = results.map { $0 + i }
        let b = results.map { $0 - i }
        results = a + b
    }
    
    for i in results {
        if i == target {
            resultCount += 1
        }
    }
    
    return resultCount
}
