func solution(_ food:[Int]) -> String {
    var foods: String = ""
    for index in 1..<food.count {
        let numberOfFoods: Int = food[index]
        let halfOfFoods: Int = numberOfFoods / 2
        guard halfOfFoods > 0 else { continue }
        for _ in 1...halfOfFoods {
            foods += index.description
        }
    }
    return foods + "0" + String(foods.reversed())
}
