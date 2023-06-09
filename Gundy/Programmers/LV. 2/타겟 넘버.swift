func solution(_ numbers:[Int], _ target:Int) -> Int {
    var result = 0
    func recursion(_ partialResult: Int, _ index: Int) {
        guard index < numbers.count else {
            if partialResult == target {
                result += 1
            }
            return
        }
        recursion(partialResult + numbers[index], index + 1)
        recursion(partialResult - numbers[index], index + 1)
    }
    recursion(0, 0)
    return result
}
