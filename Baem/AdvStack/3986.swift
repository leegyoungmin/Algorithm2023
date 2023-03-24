let inputNumber = Int(readLine()!)!
var count = 0

for _ in 1...inputNumber {
    let input = readLine()!

    var inputStack = [Character]()

    for word in input {
        
        if inputStack.isEmpty {
            inputStack.append(word)

            continue
        }

        if inputStack.last == word {
            inputStack.removeLast()

            continue
        }

        inputStack.append(word)
    }

    if inputStack.isEmpty {
        count += 1
    }
}
print(count)
