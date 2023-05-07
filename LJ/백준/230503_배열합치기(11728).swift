//배열 합치기(11728)
//https://www.acmicpc.net/problem/11728

let nm = readLine()!.split(separator: " ").map{ Int(String($0))! }
let n = nm[0], m = nm[1]

var arrA = readLine()!.split(separator: " ").map { Int(String($0))! }
var arrB = readLine()!.split(separator: " ").map { Int(String($0))! }
var result = ""
var a = 0
var b = 0

while a < n && b < m {
    if arrA[a] <= arrB[b] {
        result += "\(arrA[a]) "
        a += 1
    } else {
        result += "\(arrB[b]) "
        b += 1
    }
}

while a < n {
    result += "\(arrA[a]) "
    a += 1
}

while b < m {
    result += "\(arrB[b]) "
    b += 1
}

print(result)

/*
//문자열 += 연산 -> .write 메서드를 쓰면 시간복잡도를 줄일 수 있다.
//if-elseif문을 while로 감싸는방법 -> while문 여러개로 나눌 수 있다.


//오답 3: 시간초과(배열요소제거 -> 인덱스값만 변경)
 var array = Array(repeating: 0, count: n+m)
 var idxA = 0
 var idxB = 0
 var index = 0

 while index < n+m {
     if idxA > n-1 {
         array[index] = arrB[idxB]
         idxB += 1
     } else if idxB > m-1 {
         array[index] = arrA[idxA]
         idxA += 1
     } else if arrA[idxA] <= arrB[idxB] {
         array[index] = arrA[idxA]
         idxA += 1
     } else {
         array[index] = arrB[idxB]
         idxB += 1
     }
     index += 1
 }

//오답 2: 시간초과(removeFirst를 popLast로 변경, 여전히 시간초과..)
//오답 1: 시간초과
for _ in 0..<(n+m) {
     if arrA.isEmpty {
         array.append(arrB.removeFirst())
     } else if arrB.isEmpty {
         array.append(arrA.removeFirst())
     } else if arrA.first! < arrB.first! {
         array.append(arrA.removeFirst())
     } else {
         array.append(arrB.removeFirst())
     }
 }
*/
