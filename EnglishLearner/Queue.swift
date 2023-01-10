//
//  Queue.swift
//  EnglishLearner
//
//  Created by g.semshchikov on 10.01.2023.
//

struct Queue<T> {
  private var elements: [T] = []

  mutating func enqueue(_ value: T) {
    elements.append(value)
  }

  mutating func dequeue() -> T? {
    guard !elements.isEmpty else {
      return nil
    }
    return elements.removeFirst()
  }
    
    mutating func isEmpty() -> Bool {
        if elements.isEmpty {
            return true
        } else {
            return false
        }
    }

  var head: T? {
    return elements.first
  }

  var tail: T? {
    return elements.last
  }
}
