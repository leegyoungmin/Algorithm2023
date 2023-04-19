let input = readLine()!.split(separator: " ").map { Int($0)! }
let A = input[0]
let B = input[1]

func multi(_ num: Int) -> Int {
    num * 2
}

func add(_ num: Int) -> Int {
    num*10 + 1
}

@discardableResult
func recursion(_ count: Int, number: Int) -> Int {
    if number == B {
        return count
    } else if number > B {
        return -1
    }
    
    let a = recursion(count + 1, number: multi(number))
    let b = recursion(count + 1, number: add(number))
    
    if a != -1 {
        return a
    } else if b != -1 {
        return b
    }
    
    return -1
}

print(recursion(1, number: A))
