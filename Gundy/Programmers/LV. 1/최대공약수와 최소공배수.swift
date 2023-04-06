func solution(_ n:Int, _ m:Int) -> [Int] {
    let smallNumber: Int = n < m ? n : m
    let bigNumber: Int = n + m - smallNumber
    var result: [Int] = []
    for number in stride(from: smallNumber, through: 1, by: -1) {
        if smallNumber % number == 0,
        bigNumber % number == 0 {
            result.append(number)
            break
        }
    }
    for number in bigNumber... {
        if number % smallNumber == 0,
        number % bigNumber == 0 {
            result.append(number)
            break
        }
    }
    return result
}
