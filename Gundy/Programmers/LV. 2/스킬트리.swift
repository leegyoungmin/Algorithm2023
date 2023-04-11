func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    return skill_trees.filter({ validate(skill, $0) }).count
}

func validate(_ skill: String, _ skill_tree: String) -> Bool {
    var skillTree: String = String(skill.reversed())
    for skill in skill_tree {
        if skillTree.contains(skill) {
            guard skillTree.last == skill else { return false }
            skillTree.removeLast()
        }
    }
    return true
}
