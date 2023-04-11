func solution(_ files:[String]) -> [String] {
    var fileList: [(head: String, number: Int, index: Int)] = []
    for file in files {
        var file: [String] = file.lowercased().reversed().map({ String($0) })
        var head: String = ""
        var number: String = ""
        while Int(file.last!) == nil {
            head += file.removeLast()
        }
        while file.isEmpty == false,
              Int(file.last!) != nil {
            number += file.removeLast()
        }
        fileList.append((head, Int(number)!, fileList.count))
    }
    return fileList.sorted(by: {
        if $0.head == $1.head {
            if $0.number == $1.number {
                return $0.index < $1.index
            }
            return $0.number < $1.number
        }
        return $0.head < $1.head
    }).map({ files[$0.index] })
}
