import Foundation

func solution(_ bridge_length: Int, _ weight: Int, _ truck_weights: [Int]) -> Int {
    var trucks = truck_weights
    var bridge = Array(repeating: 0, count: bridge_length)
    var time = 0
    var bWeight = 0
    
    while bridge.isEmpty == false {
        time += 1
        
        bWeight -= bridge.removeFirst()
        
        if let t = trucks.first {
            if t + bWeight <= weight {
                bWeight += trucks.removeFirst()
                bridge.append(t)
            } else {
                bridge.append(0)
            }
        }
    }
    
    return time
}

let length = 2
let weight = 10
let trucks = [7, 4, 5, 6]

print(solution(length, weight, trucks))
