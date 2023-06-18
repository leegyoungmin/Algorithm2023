// https://www.acmicpc.net/problem/6603
// MARK: 6603_로또
// BackTracking

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }

    if input[0] == 0 {
        break
    }

    let testCase = input[0]
    let array = Array(input[1...testCase])

    solution(testCase, array)
    print()
}

func solution(_ testCase: Int,_ array: [Int]) {
    var result: [Int] = []

    func recursion(_ number: Int) {
        if number > testCase - 1 {
            return
        } else if result.count >= 6 {
            print("\(array[result[0]]) \(array[result[1]]) \(array[result[2]]) \(array[result[3]]) \(array[result[4]]) \(array[result[5]])")
            return
        }


        result.append(number + 1)
        recursion(number + 1)
        result.removeLast()

        recursion(number + 1)
    }

    recursion(-1)
}
