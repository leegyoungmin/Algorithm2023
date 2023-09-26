let N = Int(readLine()!)!

for _ in 0..<N {
    let input = Array(readLine()!)
    
    readCommand(with: input)
}

func readCommand(with elements: [Character]) {
    var leftList: [Character] = []
    var rightList: [Character] = []
    
    for char in elements {
        if char == "<" {
            if leftList.isEmpty == false {
                rightList.append(leftList.removeLast())
            }
        } else if char == ">" {
            if rightList.isEmpty == false {
                leftList.append(rightList.removeLast())
            }
        } else if char == "-" {
            if leftList.isEmpty == false {
                leftList.removeLast()
            }
        } else {
            leftList.append(char)
        }
    }
    
    print(String(leftList + rightList.reversed()))
}
