let list: Set<String> = ["aya", "ye", "woo", "ma"]

func solution(_ babbling:[String]) -> Int {
    return babbling.filter({ validate($0) }).count
}

func validate(_ text: String) -> Bool {
    var temporary: String = ""
    var current: String = ""
    for character in text {
        temporary += String(character)
        if list.contains(temporary) {
            guard temporary != current else { return false }
            current = temporary
            temporary = ""
        }
    }
    return temporary.isEmpty
}
