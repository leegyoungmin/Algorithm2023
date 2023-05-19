//카잉 달력(6064)
//https://www.acmicpc.net/problem/6064

let t = Int(readLine()!)!
var m = 0, n = 0, x = 0, y = 0

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    m = input[0]
    n = input[1]
    x = input[2]
    y = input[3]
    
    solution()
}

func gcd(_ a: Int, _ b : Int) -> Int {
    if b == 0 { return a }
    return gcd(b, a%b)
}

func lcm(_ a: Int, _ b : Int) -> Int {
    return (a * b) / gcd(a, b)
}

func solution() {
    var result = 0
    let lcm = lcm(m,n)
    
    if x == m { x = 0 }
    if y == n { y = 0 }

    for i in stride(from: x, through: lcm, by: m) {
        if i % n == y {
            if i == 0 { continue }
            result = i
            break
        }
    }
    
    if result == 0 {
        result = -1
    }
    print(result)
}


/*
 
- edge value 고려하기
  x,y 값이 m,n값과 동일하게 주어지는 경우를 고려해야 한다.
  바로 lcm을 출력해도 되지만, x,y 둘 중 하나만 m,n과 같을 수 있으므로 0으로 수정하여 해결하였다.
 
 
 */
