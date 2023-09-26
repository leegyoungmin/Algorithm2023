import Foundation

func solution(_ id_list: [String], _ report: [String], _ k:Int) -> [Int] {
   var reportResult: [String: Set<String>] = [:]
   
   for r in report {
       let r = r.split(separator: " ").map { String($0) }
       let userId = r[0], reportId = r[1]
       
       reportResult[reportId, default: []].insert(userId)
   }
   
   let values = reportResult.filter { $0.value.count >= k }.flatMap { $0.value }
   
   return id_list.map { userId in
       return values.reduce(0, {
           if $1 == userId {
               return $0 + 1
           } else {
               return $0
           }
       })
   }
}
