import UIKit

func quicksortMiddlePivot(array: [Int]) -> [Int] {
  if array.count < 2 {
    return array
  }
  
  let pivotIndex = array.count / 2
  let pivot = array[pivotIndex]
  var subarray = array
  subarray.remove(at: pivotIndex)
  
  let less = subarray.filter({ $0 <= pivot })
  let greater = subarray.filter({ $0 > pivot })
  
  return quicksortMiddlePivot(array: less) + [pivot] + quicksortMiddlePivot(array: greater)
}

func quicksortFirstPivot(array: [Int]) -> [Int] {
  if array.count < 2 {
    return array
  }
  
  let pivot = array[0]
  let less = array.dropFirst().filter({ $0 <= pivot })
  let greater = array.dropFirst().filter({ $0 > pivot })
  
  return quicksortFirstPivot(array: less) + [pivot] + quicksortFirstPivot(array: greater)
}

let result = quicksortFirstPivot(array: [10,9,8,7,6,5,4,3,2,1])

let resultMiddlePivot = quicksortMiddlePivot(array: [10,9,8,7,6,5,4,3,2,1])

