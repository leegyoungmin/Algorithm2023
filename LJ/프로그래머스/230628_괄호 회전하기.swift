
//괄호 회전하기
//https://school.programmers.co.kr/learn/courses/30/lessons/76502

func solution(_ s:String) -> Int {
   var count: Int = 0
   var newString: String = s

   for _ in 0..<s.count {
       if checkString(newString) { //올바른 문자열인지 확인 -> 올바른 문자열이면 +1, 아니면 통과
           count += 1
       }

       newString = newString + String(newString.first!)
       newString.removeFirst()
   }

   return count
}

func checkString(_ newS: String) -> Bool {
   var stack = [String]()

   for s in newS {
       let letter = String(s)
       switch letter {
       case "(":
           fallthrough
       case "{":
           fallthrough
       case "[":
           stack.append(letter)
       case ")":
           if stack.last == "(" {
               stack.popLast()
           } else {
               return false
           }
       case "}":
           if stack.last == "{" {
               stack.popLast()
           } else {
               return false
           }
       case "]":
           if stack.last == "[" {
               stack.popLast()
           } else {
               return false
           }
       default:
           break
       }
   }

   return stack.isEmpty ? true : false
}
