func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {

    var reversTruck = truck_weights.reversed().map{Int($0)}
    var totalWeight = reversTruck.removeLast()
    var time = 1

    var queue = Array(repeating: 0, count: bridge_length - 1)
    queue.append(totalWeight)

    while totalWeight != 0 {
        print(queue)
        let first = queue.removeFirst()
        time += 1
        totalWeight -= first

        if !reversTruck.isEmpty {
            if totalWeight + reversTruck.last! <= weight  {
                let last = reversTruck.removeLast()
                totalWeight += last
                queue.append(last)
            } else {
                queue.append(0)
            }
        } else {
            queue.append(0)
        }

    }

    return time
}

print(solution(2, 10, [7, 4, 5, 6]))
