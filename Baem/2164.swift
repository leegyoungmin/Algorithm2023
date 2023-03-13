func solution() {
    let input = Int(readLine()!)!

    if input == 1 {
        print(1)
        return
    } else if input == 2 {
        print(2)
        return
    }

    var queue = [Int]()

    for i in stride(from: 1, through: input, by: 1) {
        queue.append(i)
    }
    
    for i in 1...input - 2 {
        queue.append(queue[i*2 - 1])
    }
    
    print(queue.last!)
}

solution()
