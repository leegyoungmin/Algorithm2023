func solution(_ todo_list:[String], _ finished:[Bool]) -> [String] {
    var result = [String]()
    for (todo, isFinished) in zip(todo_list, finished) {
        guard isFinished == false else { continue }
        result.append(todo)
    }
    return result
}
