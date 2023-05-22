let input = readLine()!.split(separator: " ").compactMap({ Int($0) })
var binomialCoefficients = Array(repeating: Array(repeating: 0, count: input[0] + 1), count: input[0] + 1)

binomialCoefficients[0][0] = 1

if input[0] > 0 {
    for n in 1...input[0] {
        binomialCoefficients[n][0] = 1
        binomialCoefficients[n][n] = 1
    }
}

if input[0] > 1 {
    for n in 2...input[0] {
        for k in 1..<n {
            binomialCoefficients[n][k] = (binomialCoefficients[n - 1][k] + binomialCoefficients[n - 1][k - 1]) % 10007
        }
    }
}

print(binomialCoefficients[input[0]][input[1]])
