import Foundation


protocol Stringable {
  
  func protocolMethod() -> String
//  func extendedMethod() -> String
  
}

extension Stringable {
  func protocolMethod() -> String {
    return "self"
  }
}

extension Stringable {
  func extendedMethod() -> String {
    return "extended"
  }
}

struct Day: Stringable {
  
  func protocolMethod() -> String {
    return "day"
  }
  
  func extendedMethod() -> String {
    return "day"
  }
  
}

let day = Day()
let prot = day as Stringable

print(day.protocolMethod())
print(prot.protocolMethod())

print(day.extendedMethod())
print(prot.extendedMethod())
