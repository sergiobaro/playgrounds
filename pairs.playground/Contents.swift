//: Playground - noun: a place where people can play

import Cocoa

let numbers = [9,2,42,4,-1,6]
let expected = 8

func findPairsLinear(numbers: [Int], expected: Int) -> [(Int, Int)] {
  var pairs = [(Int, Int)]()
  var set = Set(numbers)
  
  for number in numbers {
    set.remove(number)
    let target = expected - number
    
    if set.contains(target) {
      let pair = (number, target)
      pairs.append(pair)
    }
  }
  
  return pairs
}

func findPairs(numbers: [Int], expected: Int) -> [(Int, Int)] {
  var pairs = [(Int, Int)]()
  
  for i in 0..<numbers.count {
    for j in (i + 1)..<numbers.count {
      
      let a = numbers[i]
      let b = numbers[j]
      if (a + b) == expected {
        let pair = (a, b)
        pairs.append(pair)
      }
    }
  }
  
  return pairs
}


let pairs = findPairs(numbers: numbers, expected: expected)
let pairsLinear = findPairsLinear(numbers: numbers, expected: expected)
print(pairs)
print(pairsLinear)

