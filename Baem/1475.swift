let roomNumber = readLine()!

var arrays = Array(repeating: 0, count: 10)

for i in roomNumber {
    arrays[i.wholeNumberValue!] += 1
}

let requiredSixNine = arrays.remove(at: 9) + arrays.remove(at: 6)

if requiredSixNine % 2 == 1 {
    arrays.append(requiredSixNine/2 + 1)
} else {
    arrays.append(requiredSixNine/2)
}

print(arrays.max()!)
