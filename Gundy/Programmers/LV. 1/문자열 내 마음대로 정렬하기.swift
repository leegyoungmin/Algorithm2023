func solution(_ strings:[String], _ n:Int) -> [String] {
    let text: [String] = strings.map({ $0.map({ String($0) })[n] })
    return strings.sorted(by: {
        if text[strings.firstIndex(of: $0)!] == text[strings.firstIndex(of: $1)!] {
            return $0 < $1
        }
        return text[strings.firstIndex(of: $0)!] < text[strings.firstIndex(of: $1)!]
    })
}
