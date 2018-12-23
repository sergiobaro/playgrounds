import UIKit



func binarySearch(array: [Int], item: Int) -> Int? {
  var low = 0
  var high = array.count - 1
  
  while low <= high {
    let mid = (low + high) / 2
    let guess = array[mid]
    if guess == item {
      return mid
    }
    if guess > item {
      high = mid - 1
    } else {
      low = mid + 1
    }
  }
  
  return nil
}


func genArray(initialValue: Int, count: Int) -> [Int] {
  return Array(repeating: 0, count: count).reduce([]) { result, value in
    let value = (result.last ?? (initialValue - 1)) + 1
    return result + [value]
  }
}

let result = binarySearch(array: genArray(initialValue: 1, count: 50), item: 50)

