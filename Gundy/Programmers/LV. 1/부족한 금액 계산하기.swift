func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    let price: Int = stride(from: 1, through: count, by: 1).map({ $0 * price }).reduce(0, +)
    
    return price > money ? Int64(price - money) : 0
}
