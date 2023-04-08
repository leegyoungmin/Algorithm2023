func solution(_ numbers:[Int], _ hand:String) -> String {
    var leftHand: (x: Int, y: Int) = (0, 3)
    var rightHand: (x: Int, y: Int) = (2, 3)
    var result: [String] = []
    for number in numbers {
        var x: Int = 0
        if number % 3 == 2 ||
            number == 0 {
            x = 1
        } else if number % 3 == 0 {
            x = 2
        }
        var y: Int = (number - 1) / 3
        if number == 0 {
            y = 3
        }
        if x == 0 {
            result.append("L")
            leftHand = (x, y)
        } else if x == 2 {
            result.append("R")
            rightHand = (x, y)
        } else {
            let distanceForLeft: Int = x - leftHand.x + abs(y - leftHand.y)
            let distanceForRight: Int = rightHand.x - x + abs(rightHand.y - y)
            if distanceForLeft < distanceForRight {
                result.append("L")
                leftHand = (x, y)
            } else if distanceForRight < distanceForLeft {
                result.append("R")
                rightHand = (x, y)
            } else {
                switch hand {
                case "left":
                    result.append("L")
                    leftHand = (x, y)
                default:
                    result.append("R")
                    rightHand = (x, y)
                }
            }
        }
    }
    return result.joined()
}
