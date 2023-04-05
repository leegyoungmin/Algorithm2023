func solution(_ s:String) -> String {
    let texts: [String] = s.map({ String($0) })
    let halfIndex: Int = texts.count / 2
    return texts.count % 2 == 0 ? texts[halfIndex-1] + texts[halfIndex] : texts[halfIndex]
}
