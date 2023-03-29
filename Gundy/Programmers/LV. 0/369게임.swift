func solution(_ order:Int) -> Int {
    return order.description.filter({ $0 == "3" || $0 == "6" || $0 == "9" }).count
}
