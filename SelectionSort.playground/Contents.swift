import UIKit

func findSmallest(array: [Int]) -> Int {
  if array.isEmpty { return -1 }
  
  var smallest = array[0]
  var smallestIndex = 0
  
  for (index, value) in array.enumerated() {
    if smallest > value {
      smallest = value
      smallestIndex = index
    }
  }
  
  return smallestIndex
}

//let result = findSmallest(array: [5, 7, 1, 10, 56])

func selectionSort(array: [Int]) -> [Int] {
  var original = array
  var sorted = [Int]()
  
  for _ in 0 ..< array.count {
    let smallestIndex = findSmallest(array: original)
    let smallest = original[smallestIndex]
    sorted.append(smallest)
    original.remove(at: smallestIndex)
  }
  
  return sorted
}

let result = selectionSort(array: [5, 7, 1, 10, 56])
