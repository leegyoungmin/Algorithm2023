func solution(_ s:String) -> Bool {
    var countOfP: Int = 0
    var countOfY: Int = 0
    for text in s {
        switch text {
        case "p", "P":
            countOfP += 1
        case "y", "Y":
            countOfY += 1
        default:
            continue
        }
    }
    return countOfP == countOfY
}
