let inputNumber = Int(readLine()!)!

for _ in 1...inputNumber {
    let input = readLine()!

    if input.count % 2 == 1 {
        print("NO")
        continue
    }

    var inputStack = [Character]()

    for word in input {

        if inputStack.isEmpty {
            inputStack.append(word)
            continue
        }

        if inputStack.last == "(" && word == ")" {
            inputStack.removeLast()
            continue
        }

        inputStack.append(word)
    }

    if inputStack.isEmpty {
        print("YES")
        continue
    }
    print("NO")
}
