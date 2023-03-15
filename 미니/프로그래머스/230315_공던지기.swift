func solution(_ numbers: [Int], _ k: Int) -> Int {
    var count: Int = 0
    var index: Int = 0
    var result: [Int] = []

    while count != k {
        if index >= numbers.count {
            index -= numbers.count
            print(index)
        }

        let number = numbers[index]
        result.append(number)

        index += 2
        count += 1
    }

    return result.last!
}

let numbers = [1, 2, 3]
let k = 3

print(solution(numbers, k))
