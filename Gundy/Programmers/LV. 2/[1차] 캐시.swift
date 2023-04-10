func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    guard cacheSize > 0 else { return cities.count * 5 }
    var cache: [String] = []
    var result: Int = 0
    for city in cities {
        if cache.contains(city.lowercased()) {
            var temporary: [String] = []
            while cache.last != city.lowercased() {
                temporary.append(cache.removeLast())
            }
            cache.removeLast()
            cache += temporary.reversed() + [city.lowercased()]
            result += 1
            continue
        }
        if cache.count == cacheSize {
            cache = cache.reversed()
            cache.removeLast()
            cache = cache.reversed()
            cache.append(city.lowercased())
            result += 5
        } else {
            cache.append(city.lowercased())
            result += 5
        }
    }
    return result
}
