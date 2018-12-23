import UIKit

func mergeSort(array: [Int]) -> [Int] {
  if array.count == 1 {
    return array
  }
  
  let pivotIndex = array.count / 2
  let left = mergeSort(array: Array(array.prefix(pivotIndex)))
  let right = mergeSort(array: Array(array.suffix(from: pivotIndex)))
  
  var result = [Int]()
  var indexLeft = 0
  var indexRight = 0
  
  while indexLeft < left.count && indexRight < right.count {
    let leftValue = left[indexLeft]
    let rightValue = right[indexRight]
    if leftValue < rightValue {
      result.append(leftValue)
      indexLeft += 1
    } else {
      result.append(rightValue)
      indexRight += 1
    }
  }
  
  result += left.suffix(from: indexLeft)
  result += right.suffix(from: indexRight)
  
  return result
}

let result = mergeSort(array: [2, 5, 1, 3, 7, 4, 2, 3, 9, 8, 6, 3])
