func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    if db.contains(id_pw) {
        return "login"
    }
    return db.filter({ $0.first == id_pw.first }).isEmpty ? "fail" : "wrong pw"
}
