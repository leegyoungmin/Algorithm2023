func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var number: Int = 0
    var stack: [Character] = []
    while stack.count < m * t {
        stack += String(number, radix: n).map({ $0 })
        number += 1
    }
    var result: String = ""
    for time in 0..<t {
        let index: Int = (time * m) + p - 1
        result += stack[index].uppercased()
    }
    return result
}
