import UIKit

func heapify(array: [Int], count: Int, rootIndex: Int) -> [Int] {
  let leftChildIndex = 2 * rootIndex + 1
  let rightChildIndex = 2 * rootIndex + 2
  
  var largestIndex = rootIndex
  
  if leftChildIndex < count && array[leftChildIndex] > array[largestIndex] {
    largestIndex = leftChildIndex
  }
  if rightChildIndex < count && array[rightChildIndex] > array[largestIndex] {
    largestIndex = rightChildIndex
  }
  
  var result = array
  
  if largestIndex != rootIndex {
    let rootValue = array[rootIndex]
    result[rootIndex] = array[largestIndex]
    result[largestIndex] = rootValue
    
    result = heapify(array: result, count: count, rootIndex: largestIndex)
  }
  
  return result
}

//heapify(array: [7,2,4], count: 3, rootIndex: 0)
//heapify(array: [2,7,4], count: 3, rootIndex: 0)
//heapify(array: [4,7,2], count: 3, rootIndex: 0)
//heapify(array: [7,4,2], count: 3, rootIndex: 0)

func maxHeap(array: [Int]) -> [Int] {
  var index = array.count / 2 - 1
  var result = array
  
  while index >= 0 {
    result = heapify(array: result, count: array.count, rootIndex: index)
    index -= 1
  }
  
  return result
}

//let array = [1,12,9,5,6,10]
//maxHeap(array: array)

func heapsort(array: [Int]) -> [Int] {
  var result = maxHeap(array: array)
  var count = array.count
  
  while count > 0 {
    let max = result[0]
    result[0] = result[count - 1]
    result[count - 1] = max
    
    count -= 1
    
    result = heapify(array: result, count: count, rootIndex: 0)
  }
  
  
  return result
}

let array = [1,12,9,5,6,10]
heapsort(array: array)
