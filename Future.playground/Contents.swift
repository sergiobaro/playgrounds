import Combine
import Foundation
import PlaygroundSupport

enum LoadError: Error {
  case unknown
}

func load() -> Future<Int, Error> {
  Future<Int, Error> { promise in
    promise(.success(1))
  }
}

func load2(_ previousValue: Int) -> Future<Int, Error> {
  Future<Int, Error> { promise in
//    promise(.failure(LoadError.unknown))
    promise(.success(previousValue + 1))
  }
}

load()
  .flatMap({ value in
    load2(value)
  })
  .sink { completion in
    switch completion {
    case let .failure(error):
      print("Error: \(error)")
    case .finished:
      print("Finished without errors")
    }
  } receiveValue: { value in
    print("Value: \(value)")
  }



PlaygroundPage.current.needsIndefiniteExecution = true
