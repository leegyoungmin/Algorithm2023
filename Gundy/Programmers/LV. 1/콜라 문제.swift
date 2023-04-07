func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var result: Int = 0
    var count: Int = 0
    var stock: Int = n
    while stock > 0 {
        stock -= 1
        count += 1
        if count == a {
            stock += b
            result += b
            count = 0
        }
    }
    return result
}
