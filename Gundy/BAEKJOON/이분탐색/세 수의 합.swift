var numbers = [Int]()

for _ in 1...Int(readLine()!)! {
    numbers.append(Int(readLine()!)!)
}

numbers.sort()

var double = Set<Int>()

for first in 0..<numbers.count - 1 {
    for second in first..<numbers.count - 1 {
        double.insert(numbers[first] + numbers[second])
    }
}

solution()

func solution() {
    for first in stride(from: numbers.count - 1, through: 1, by: -1) {
        for second in 0..<first {
            if double.contains(numbers[first] - numbers[second]) {
                print(numbers[first])
                return
            }
        }
    }
}
