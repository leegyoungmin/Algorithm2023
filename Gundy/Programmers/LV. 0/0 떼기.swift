func solution(_ n_str:String) -> String {
    let target = n_str.map(String.init)
    var index = 0
    while target[index] == "0" {
        index += 1
    }
    return target[index...target.count - 1].joined()
}
