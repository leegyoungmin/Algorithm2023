func solution(_ dirs:String) -> Int {
    var x: Int = 0
    var y: Int = 0
    var firstRoutes: Set<Set<String>> = []
    for command in dirs {
        let origin: String = "\(x),\(y)"
        switch command {
        case "U":
            guard y < 5 else { continue }
            y += 1
        case "D":
            guard y > -5 else { continue }
            y -= 1
        case "R":
            guard x < 5 else { continue }
            x += 1
        default:
            guard x > -5 else { continue }
            x -= 1
        }
        let newPoint: String = "\(x),\(y)"
        firstRoutes.insert([origin, newPoint])
    }
    return firstRoutes.count
}
