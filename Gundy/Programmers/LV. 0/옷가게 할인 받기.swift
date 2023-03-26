func solution(_ price:Int) -> Int {
    switch price {
    case 10..<100000:
        return price
    case 100000..<300000:
        return price * 95 / 100
    case 300000..<500000:
        return price * 9 / 10
    default:
        return price * 8 / 10
    }
}
