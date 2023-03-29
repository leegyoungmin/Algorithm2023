func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    let numbers: [Int] = numbers
    switch direction {
    case "left":
        return numbers[1...numbers.count-1] + [numbers[0]]
    default:
        return [numbers.last!] + numbers[0...numbers.count-2]
    }
}
