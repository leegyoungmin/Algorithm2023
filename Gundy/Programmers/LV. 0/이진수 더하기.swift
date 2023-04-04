func solution(_ bin1:String, _ bin2:String) -> String {
    let result: Int = Int(bin1, radix: 2)! + Int(bin2, radix: 2)!
    return String(result, radix: 2)
}
