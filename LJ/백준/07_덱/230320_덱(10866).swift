//덱
//https://www.acmicpc.net/problem/10866

let N: Int = Int(readLine()!)!
var inputs: [String] = []
var enqueue: [Int] = []
var dequeue: [Int] = []

for _ in 1...N {
    let input: String = readLine()!
    inputs.append(input)
}

inputs.forEach {
    readCommand($0)
}

func readCommand(_ command: String) {
    let commands: [String] = command.split(separator: " ").map { String($0) }
    switch commands[0] {
    case "push_back":
        pushBack(Int(commands[1])!)
    case "push_front":
        pushFront(Int(commands[1])!)
    case "pop_back":
        print(popBack())
    case "pop_front":
        print(popFront())
    case "front":
        print(front())
    case "back":
        print(back())
    case "empty":
        print(empty())
    case "size":
        print(size())
    default:
        break
    }
}


func pushBack(_ X: Int) {
    enqueue.append(X)
}

func pushFront(_ X: Int) {
    enqueue = enqueue.reversed()
    enqueue.append(X)
    enqueue = enqueue.reversed()
}

func popBack() -> Int {
    if enqueue.isEmpty == true {
        return -1
    } else {
        return enqueue.popLast()!
    }
}

func popFront() -> Int {
    if enqueue.isEmpty == true {
        return -1
    } else {
        enqueue = enqueue.reversed()
        let result = enqueue.popLast()!
        enqueue = enqueue.reversed()
        return result
    }
}

func size() -> Int {
    return enqueue.count + dequeue.count
}

func empty() -> Int {
    if enqueue.isEmpty == true &&
        dequeue.isEmpty == true {
        return 1
    }
    return 0
}

func front() -> Int {
    if enqueue.isEmpty == true && dequeue.isEmpty == true {
        return -1
    } else {
        return enqueue.first!
    }
}

func back() -> Int {
    if enqueue.isEmpty == true {
        return -1
    } else {
        return enqueue.last!
    }
}

/*
- reversed() 두번 하는것 말고 다른 방법이 있나
- head, tail 또는 연결리스트로 하는 방법(아직은 어려움..복잡)
- 큐 문제에서 맨앞원소 제거하는 부분만 수정하였다
*/
