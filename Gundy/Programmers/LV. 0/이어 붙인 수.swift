func solution(_ num_list:[Int]) -> Int {
    var oddNumber  = ""
    var evenNumber = ""
    for number in num_list {
        if number % 2 == 1 {
            oddNumber += String(number)
        } else {
            evenNumber += String(number)
        }
    }
    return Int(oddNumber)! + Int(evenNumber)!
}
