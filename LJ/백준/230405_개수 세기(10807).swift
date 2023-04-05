//개수 세기(10807)
//https://www.acmicpc.net/problem/10807
let N = Int(readLine()!)
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let V = Int(readLine()!)
var count = 0

input.forEach {
    if $0 == V {
        count += 1
    }
}

print(count)

/*
 - 인덱스 0,1 활용하여 풀 경우 인덱스는 음수가 없으므로 런타임에러가 난다.
 */
