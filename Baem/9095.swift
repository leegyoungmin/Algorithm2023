let testCase = Int(readLine()!)!

for _ in 1...testCase {
    var total = 0
    let target = Int(readLine()!)!
    
    func result(number: Int) {
        if target < number {
            return
        } else if target == number {
            total += 1
            return
        }
        
        for i in 1...3 {
            result(number: number+i)
        }
    }
    
    result(number: 0)
    print(total)
}
