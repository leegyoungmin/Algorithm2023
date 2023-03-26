func solution(_ dot:[Int]) -> Int {
    if dot.first! > 0 {
        if dot.last! > 0 {
            return 1
        } else {
            return 4
        }
    } else {
        if dot.last! > 0 {
            return 2
        } else {
            return 3
        }
    }
}
