func solution(_ new_id:String) -> String {
    let id: String = new_id.lowercased()
    var filteredID: String = ""
    for text in id {
        let word: String = String(text)
        if text.isLowercase {
            filteredID += word
        } else if let number = Int(word) {
            filteredID += word
        } else if text == "-" ||
                    text == "_" {
            filteredID += word
        } else if word == ".",
                  filteredID.isEmpty == false,
                  text != filteredID.last {
            filteredID += word
        }
    }
    if filteredID.last == "." {
        filteredID.removeLast()
    }
    if filteredID.isEmpty {
        filteredID = "a"
    }
    if filteredID.count > 15 {
        filteredID = String(filteredID.reversed())
        var ID: String = ""
        while ID.count < 15 {
            ID += String(filteredID.removeLast())
        }
        while ID.last == "." {
            ID.removeLast()
        }
        filteredID = ID
    }
    while filteredID.count < 3 {
        filteredID += String(filteredID.last!)
    }
    return filteredID
}
