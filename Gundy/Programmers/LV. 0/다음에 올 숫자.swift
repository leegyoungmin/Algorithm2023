func solution(_ common:[Int]) -> Int {
    if common[1] - common[0] == common[2] - common[1] {
        let difference: Int = common[1] - common[0]
        return common.last! + difference
    }
    let difference: Int = common[1] / common[0]
    return common.last! * difference
}
