func solution(_ chicken:Int) -> Int {
    var coupon: Int = chicken
    var service: Int = 0
    while coupon >= 10 {
        coupon -= 10
        service += 1
        coupon += 1
    }
    return service
}
