import Foundation

protocol Stringable {
  
  func protocolMethod() -> String
  func extendedMethod() -> String
  func defaultMethod(string: String) -> String
  
}

extension Stringable {
  func defaultMethod(string: String = "") -> String {
    return "string \(string)"
  }
}

protocol ExtendedStringable: Stringable {}

extension ExtendedStringable {
  
  func extendedMethod() -> String {
    return "extended"
  }
  
  func defaultMethod(string: String = "") -> String {
    return "extended \(string)"
  }
}

struct Day: ExtendedStringable {
  
  func protocolMethod() -> String {
    return "day"
  }
  
  func defaultMethod(string: String = "") -> String {
    return "day \(string)"
  }
}

struct Month: ExtendedStringable {
  
  func protocolMethod() -> String {
    return "month"
  }
  
  func extendedMethod() -> String {
    return "month"
  }
  
  func defaultMethod(string: String = "") -> String {
    return "month \(string)"
  }
}

let day = Day()
let month = Month()
let dayAsProt = day as Stringable
let monthAsProt = month as Stringable

print(day.protocolMethod())
print(month.protocolMethod())
print(dayAsProt.protocolMethod())
print(monthAsProt.protocolMethod())

print(day.extendedMethod())
print(month.extendedMethod())
print(dayAsProt.extendedMethod())
print(monthAsProt.extendedMethod())

print(day.defaultMethod())
print(month.defaultMethod())
print(dayAsProt.defaultMethod())
print(monthAsProt.defaultMethod())
