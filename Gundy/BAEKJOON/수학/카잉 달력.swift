var result = [Int]()

let numberOfCases = Int(readLine()!)!

for _ in 1...numberOfCases {
    let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
    if let number = solution(M: input[0], N: input[1], x: input[2], y: input[3]) {
        result.append(number)
    } else {
        result.append(-1)
    }
}

result.forEach({ print($0) })

func solution(M: Int, N: Int, x: Int, y: Int) -> Int? {
    guard M > 1 else { return y }
    guard N > 1 else { return x }

    if M > N {
        let max = x == M ? N : N - 1
        for multiple in 0...max {
            if (multiple * M + x) % N == y % N {
                return multiple * M + x
            }
        }
    } else {
        let max = y == N ? M : M - 1
        for multiple in 0...max {
            if (multiple * N + y) % M == x % M {
                return multiple * N + y
            }
        }
    }
    return nil
}
