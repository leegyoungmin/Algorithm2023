func solution(_ arr1:[Int], _ arr2:[Int]) -> Int {
    if arr1.count == arr2.count {
        let first = arr1.reduce(0, +)
        let second = arr2.reduce(0, +)
        if first > second {
            return 1
        } else if first == second {
            return 0
        } else {
            return -1
        }
    }
    return arr1.count > arr2.count ? 1 : -1
}
