func solution(_ numbers:[Int], _ k:Int) -> Int {
    if numbers.count % 2 == 0 {
        let n: Int = (((k * 2) - 1) % numbers.count) - 1
        
        return n == -1 ? numbers.last! : numbers[n]
    } else {
        var oddNumbers: [Int] = []
        var evenNumbers: [Int] = []
        for index in 0..<numbers.count {
            let number = numbers[index]
            if number % 2 == 0 {
                evenNumbers.append(number)
            } else {
                oddNumbers.append(number)
            }
        }
        var newNumbers: [Int] = oddNumbers + evenNumbers
        var n: Int = k % newNumbers.count - 1
        
        return n == -1 ? newNumbers.last! : newNumbers[n]
    }
}

// 짝수 -> 무조건 홀수만 반복
// 123456
// 1 3 5 1 3 5 -> 홀수만 있는 배열의 K번째를 찾으면 됨
// 홀수 -> 홀수 이후 짝수 반복
// 12345
// 1 3 5 2 4 1 3 5 2 4 -> [홀수]+[짝수] 배열을 반들어서 K번째를 찾으면 됨
