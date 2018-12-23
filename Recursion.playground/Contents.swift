import UIKit


func sum(array: [Int]) -> Int {
  if array.count == 0 {
    return 0
  }
  
  var array = array
  let value = array[0]
  array.remove(at: 0)
  
  return value + sum(array: array)
}


let result = sum(array: [1,2,3])
