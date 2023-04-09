func solution(_ n:Int) -> Int {
    let text: String =  String(n, radix: 2)
    var zeroCount: Int = 0
    var number: String = text
    while number.last == "0" {
        number.removeLast()
        zeroCount += 1
    }
    var oneCount: Int = -1
    while number.isEmpty == false,
          number.last != "0" {
        number.removeLast()
        oneCount += 1
    }
    if number.isEmpty,
       zeroCount == 0 {
        number = "10" + String(repeating: "1", count: oneCount)
    } else if number.isEmpty {
        number += "10" + String(repeating: "0", count: zeroCount) + String(repeating: "1", count: oneCount)
    } else {
        number.removeLast()
        number += "10" + String(repeating: "0", count: zeroCount) + String(repeating: "1", count: oneCount)
    }
    
    return Int(number, radix: 2)!
}
