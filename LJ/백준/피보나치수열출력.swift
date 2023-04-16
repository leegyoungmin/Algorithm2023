//피보나치 수열 출력

var value: Int = 1
recursion(0, 1, 10)

func recursion(_ n: Int, _ m: Int, _ count: Int) {
    if count == 0 { return } //종료조건
    
    print(value)
    value = n + m
    recursion(m, value, count-1)
}
