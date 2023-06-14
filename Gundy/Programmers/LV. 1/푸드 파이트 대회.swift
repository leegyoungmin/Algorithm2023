func solution(_ food:[Int]) -> String {
    var foods = String()
    for index in 1..<food.count {
        let dish = food[index]
        guard dish > 1 else {
            continue
        }
        foods +=  String(repeating: "\(index)", count: dish / 2)
    }
    return foods + "0" + foods.reversed()
}
