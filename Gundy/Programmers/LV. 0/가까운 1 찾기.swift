func solution(_ arr:[Int], _ idx:Int) -> Int {
    var index = idx
    while index < arr.count,
        arr[index] != 1 {
            index += 1
        }
    return index == arr.count ? -1 : index
}
