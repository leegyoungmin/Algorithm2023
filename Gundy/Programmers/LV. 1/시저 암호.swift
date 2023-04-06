func solution(_ s:String, _ n:Int) -> String {
    let lowercaseList: [String] = "abcdefghijklmnopqrstuvwxyz".map({ String($0) })
    var lowercases: [Character: Int] = [:]
    for (text, index) in zip("abcdefghijklmnopqrstuvwxyz", 0...) {
        lowercases[text] = index
    }
    let uppercaseList: [String] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".map({ String($0) })
    var uppercases: [Character: Int] = [:]
    for (text, index) in zip("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 0...) {
        uppercases[text] = index
    }
    var result: String = ""
    for text in s {
        if text.isLowercase {
            var index: Int = lowercases[text]! + n
            if index >= lowercases.count {
                index -= lowercases.count
            }
            result += lowercaseList[index]
        } else if text.isUppercase {
            var index: Int = uppercases[text]! + n
            if index >= uppercases.count {
                index -= uppercases.count
            }
            result += uppercaseList[index]
        } else {
            result += String(text)
        }
    }
    return result
}
