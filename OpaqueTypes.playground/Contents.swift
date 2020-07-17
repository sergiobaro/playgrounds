import Foundation

protocol Shape {
  func draw() -> String
}

struct Triangle: Shape {
  var size: Int
  func draw() -> String {
    var result = [String]()
    for length in 1...size {
      result.append(String(repeating: "*", count: length))
    }
    return result.joined(separator: "\n")
  }
}
let triangle = Triangle(size: 3)

struct FlippedShape: Shape {
  let shape: Shape
  func draw() -> String {
    shape.draw().split(separator: "\n").reversed().joined(separator: "\n")
  }
}

let flipped = FlippedShape(shape: triangle)

struct JoinedShape: Shape {
  let top: Shape
  let bottom: Shape
  func draw() -> String {
    top.draw() + "\n" + bottom.draw()
  }
}

let joined = JoinedShape(top: triangle, bottom: flipped)
print(joined.draw())
