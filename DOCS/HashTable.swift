// MARK: Hash 함수
/*
 Hash라는 것이 뭐냐 임의로 정한 어떤 수나 값
 하나의 메모리에 저장을 하겠다.
 */

// MARK: Int

let 하나 = 1
let 백 = 2

print(하나.hashValue)
print(백.hashValue)

// MARK: String
let abc = "abc"
let cba = "cba"

print(abc.hashValue)
print(cba.hashValue)

func hashValue(value: String) -> Int {
    let unicodeScalar = value.unicodeScalars.map { Int($0.value) }
    return unicodeScalar.reduce(0, +)
}

print(hashValue(value: abc))
print(hashValue(value: cba))

// MARK: Hashable하게 만들기
struct Person: Hashable {
    let name: String
    let habby: Habby

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

struct Habby {
    let description: String
}

let 미니 = Person(name: "미니", habby: Habby(description: "LOL"))
let 미니2 = Person(name: "미니", habby: Habby(description: "취침"))

print(미니.hashValue, 미니2.hashValue)
print(미니 == 미니2)


// MARK: Table 만들기
func djb2Hash(_ string: String) -> Int {
  let unicodeScalars = string.unicodeScalars.map { $0.value }
  return unicodeScalars.reduce(5381) {
    ($0 << 5) &+ $0 &+ Int($1)
  }
}


struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]

    private var buckets: [Bucket]

    private(set) var count: Int = 0

    var isEmpty: Bool {
        return count == 0
    }

    init(capacity: Int) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeating: [], count: capacity)
    }

    private func index(for key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }

    subscript(key: Key) -> Value? {
        get {
            return value(for: key)
        }

        set {
            if let value = newValue {
                update(value: value, for: key)
            } else {
                removeValue(for: key)
            }
        }
    }

    private func value(for key: Key) -> Value? {
        let index = self.index(for: key)
        return buckets[index].first { $0.key == key }?.value
    }

    @discardableResult
    mutating func update(value: Value, for key: Key) -> Value? {
        let index = self.index(for: key)

        if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
            let oldValue = element.value
            buckets[index][i].value = value
            return oldValue
        }

        buckets[index].append((key: key, value: value))
        count += 1
        return nil
    }

    @discardableResult
    mutating func removeValue(for key: Key) -> Value? {
        let index = self.index(for: key)

        if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
            buckets[index].remove(at: i)
            count -= 1
            return element.value
        }

        return nil
    }
}

var table = HashTable<String, String>(capacity: 4)
table["firstName"] = "Lee"

if let name = table["firstName"] {
    print(name)
}

table.update(value: "kim", for: "firstName")

if let name = table["firstName"] {
    print(name)
}

table.removeValue(for: "firstName")

if let name = table["firstName"] {
    print("있어요 \(name)")
}

print("없어요")
