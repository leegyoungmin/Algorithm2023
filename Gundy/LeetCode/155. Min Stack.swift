class MinStack {
    var stack: [Int] = []

    init() {}
    
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        stack.popLast()
    }
    
    func top() -> Int {
        guard let last = stack.last else {
            return 0
        }
        return last
    }
    
    func getMin() -> Int {
        let sortedStack: [Int] = stack.sorted()
        guard let first = sortedStack.first else {
            return 0
        }
        return first
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
