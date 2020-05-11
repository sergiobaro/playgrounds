// Opaque Types `some`: https://docs.swift.org/swift-book/LanguageGuide/OpaqueTypes.html

import Foundation

protocol Shape {
  associatedtype Color
  var color: Color { get }
  func describe() -> String
}

struct Square: Shape {
  var color: String
  func describe() -> String {
    "Square"
  }
}

struct Circle: Shape {
  var color: Int
  func describe() -> String {
    "Circle"
  }
}

struct ShapeFactory {
  func makeSquare() -> some Shape {
    Square(color: "Yellow")
  }

  func makeCirle() -> some Shape {
    Circle(color: 1)
  }
}

let shape = ShapeFactory().makeSquare()

print(shape.color)
(shape as! Square).color == ""

