let sentence = readLine()!.map { $0 }
var count: Int = 0
var dict: Set<String> = []

for i in 0..<sentence.count {
    var v = ""
    
    for j in i..<sentence.count {
        v += sentence[j].description
        let result = dict.insert(v)
        
        dump((v, result.inserted, Array(dict)))
    }
}

print(dict.count)
