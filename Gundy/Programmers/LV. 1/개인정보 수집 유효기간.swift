func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today: [Int] = today.split(separator: ".").compactMap({ Int($0) })
    var termList: [String : Int] = [:]
    for term in terms {
        let term: [String] = term.split(separator: " ").map({ String($0) })
        termList[term[0]] = Int(term[1])!
    }
    var privacies: [[Int]] = privacies.map {
        let texts: [String] = $0.split(separator: " ").map({ String($0) })
        let term: Int = termList[texts[1]]!
        var date: [Int] = texts[0].split(separator: ".").compactMap({ Int($0) })
        date[1] += term
        if date[1] > 12 {
            date[0] += 1
            date[1] -= 12
        }
        return date
    }
    var number: Int = 0
    var result: [Int] = []
    for privacy in privacies {
        number += 1
        guard privacy[0] >= today[0] else {
            result.append(number)
            continue
        }
        if privacy[0] > today[0] {
            continue
        }
        guard privacy[1] >= today[1] else {
            result.append(number)
            continue
        }
        if privacy[1] > today[1] {
            continue
        }
        guard privacy[2] > today[2] else {
            result.append(number)
            continue
        }
    }
    return result
}
