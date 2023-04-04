func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var xPosition: Int = 0
    var yPosition: Int = 0
    let size: (x: Int, y: Int) = (board[0], board[1])
    for input in keyinput {
        switch input {
        case "up":
            yPosition += 1
            if yPosition > size.y / 2 {
                yPosition = size.y / 2
            }
        case "down":
            yPosition -= 1
            if yPosition < -1 * (size.y / 2) {
                yPosition = -1 * (size.y / 2)
            }
        case "left":
            xPosition -= 1
            if xPosition < -1 * (size.x / 2) {
                xPosition = -1 * (size.x / 2)
            }
        default:
            xPosition += 1
            if xPosition > size.x / 2 {
                xPosition = size.x / 2
            }
        }
    }
    return [xPosition, yPosition]
}
