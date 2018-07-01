//: Playground - noun: a place where people can play

import Cocoa


// Find longest string without digits and contains at least one uppercase character

let str = "awW1a123aaaaaaa12378AAAAAA"

let result = str.split { "0"..."9" ~= $0 }
  .filter { $0.contains { "A"..."Z" ~= $0 } }
  .reduce("", { $0.count > $1.count ? $0 : $1 })
print(result)


var best = ""
var current = ""
var currentContainsUppercase = false

for c in str {
  if ("a"..."z" ~= c) {
    current.append(c)
  } else if ("A"..."Z" ~= c) {
    currentContainsUppercase = true
    current.append(c)
  } else {
    if currentContainsUppercase && current.count > best.count {
      best = current
    }
    current = ""
    currentContainsUppercase = false
  }
}

if currentContainsUppercase && current.count > best.count {
  best = current
}

print(best)
