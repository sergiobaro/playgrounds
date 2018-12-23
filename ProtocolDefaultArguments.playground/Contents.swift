import Foundation

protocol Stringable {
  
  func method(string: String) -> String
  
}

extension Stringable {
  func method(string: String = "") -> String {
    return "self: \(string)"
  }
}

struct Day: Stringable {
  
  func method(string: String = "") -> String {
    return "day: \(string)"
  }
}

let day = Day()
let dayAsProtocol = day as Stringable

print(day.method(string: "day"))
print(dayAsProtocol.method(string: "day"))

print(day.method())
print(dayAsProtocol.method())
