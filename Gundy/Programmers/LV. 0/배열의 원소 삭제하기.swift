func solution(_ arr:[Int], _ delete_list:[Int]) -> [Int] {
    let deleteList = Set(delete_list)
    var result = [Int]()
    for number in arr {
        guard deleteList.contains(number) == false else { continue }
        result.append(number)
    }
    return result
}
