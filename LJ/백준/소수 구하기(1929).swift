
//소수 구하기(1929)
//https://www.acmicpc.net/problem/1929

let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
let m = input[0], n = input[1]
var array = Array(repeating: 0, count: n+1)
var primes: String = ""

for i in 2...n {
    array[i] = i
}

for i in 2...n {
    if array[i] == 0 { continue }
    for j in stride(from: i+i, through: n, by: i){ 
        array[j] = 0
    }
}

for i in m...n {
    if array[i] != 0 {
        primes += "\(array[i])" + "\n"
    }
}

print(primes)


/*
 에라토스테네스의 체 를 이용하는 문제
 전체 숫자배열에서 소수 자기자신을 제외한 배수를 소거해나가는 방법
 
  오답 1: 시간초과
  소수찾기의 문제와 동일한 규칙을 반복문,조건문으로 해보니 시간초과가 났다.
  인덱스를 활용하여 에라토스테네스의 체 법칙대로 다시 풀어서 해결하였다.
  제어문 break, continue에 대해 다시 공부했다.
    
 
 let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
 let m = input[0], n = input[1]
 var primes: String = ""

 for number in m...n {
     for k in 2...number {
         if number % k != 0 {
             continue
         } else if k * k <= number {
             break
         } else {
             primes += "\(number)\n"
             break
         }
     }
 }

 print(primes)
 
 */
