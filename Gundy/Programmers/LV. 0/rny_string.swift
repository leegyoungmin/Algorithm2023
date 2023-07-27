func solution(_ rny_string:String) -> String {
    var result = String()
    rny_string.map(String.init).forEach {
        if $0 == "m" {
            result += "rn"
        } else {
            result += $0
        }
    }
    return result
}
