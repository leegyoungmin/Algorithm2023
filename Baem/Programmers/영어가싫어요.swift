func solution(_ numbers:String) -> Int64 {
    var str = String()
    var value = String()

    for i in numbers {
        str += String(i)

        switch str {
            case "zero":
                value.append("0")
                str = ""
            case "one":
                value.append("1")
                str = ""
            case "two":
                value.append("2")
                str = ""
            case "three":
                value.append("3")
                str = ""
            case "four":
                value.append("4")
                str = ""
            case "five":
                value.append("5")
                str = ""
            case "six":
                value.append("6")
                str = ""
            case "seven":
                value.append("7")
                str = ""
            case "eight":
                value.append("8")
                str = ""
            case "nine":
                value.append("9")
                str = ""
            default:
                continue
        }
    }

    return Int64(value)!
}
