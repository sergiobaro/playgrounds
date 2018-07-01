//: Playground - noun: a place where people can play

import Cocoa


let a1 = [-1,2,5,6,7,10,11]
let a2 = [1,3,4,9]


func mix(one: [Int], two: [Int]) -> [Int] {
  if one.count == 0 {
    return two
  }
  if two.count == 0 {
    return one
  }
  
  var result = [Int]()
  
  var i = 0
  var j = 0
  
  while (i < one.count && j < two.count) {
    let a = one[i]
    let b = two[j]
    if a < b {
      result.append(a)
      i = i + 1
    } else {
      result.append(b)
      j = j + 1
    }
  }
  
  if i < one.count {
    let missing = one.suffix(one.count - i)
    result.append(contentsOf: missing)
  }
  
  if j < two.count {
    let missing = two.suffix(two.count - j)
    result.append(contentsOf: missing)
  }
  
  
  return result
}

let result = mix(one: a1, two: a2)
