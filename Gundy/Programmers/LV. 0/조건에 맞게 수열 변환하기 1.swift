func solution(_ arr:[Int]) -> [Int] {
    return arr.map(transform)
}

func transform(_ number: Int) -> Int {
    if number >= 50 && number % 2 == 0 {
        return number / 2
    } else if number < 50 && number % 2 == 1 {
        return number * 2
    } else {
        return number
    }
}
