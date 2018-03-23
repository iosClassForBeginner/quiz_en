//
//  Quiz.swift
//  quiz_en
//
//  Created by Wataru Maeda on 2018-03-22.
//  Copyright © 2018 com.watarumaeda. All rights reserved.
//

import UIKit

class QuizManager: NSObject {
  
  static var shared = QuizManager()
  private override init() {} // Singleton

  private var quizes = [[String: String]]()
  private var result = [Bool]()
  
  private func initQuiz() {
    quizes = [
      [
        "quiz": "1 + 1 = ?",
        "answer": "2",
        "choice_1": "100",
        "choice_2": "2",
        "choice_3": "5",
        "choice_4": "67"
      ],
      [
        "quiz": "2 + 3 = ?",
        "answer": "5",
        "choice_1": "5",
        "choice_2": "10",
        "choice_3": "9",
        "choice_4": "23"
      ],
      [
        "quiz": "100 x 0 = ?",
        "answer": "0",
        "choice_1": "100",
        "choice_2": "10",
        "choice_3": "1000",
        "choice_4": "0"
      ],
    ]
  }
  
  func isExistNextQuiz() -> Bool {
    let isExisting = quizes.count != 0
    return isExisting
  }
  
  func getQuiz() -> [String: String] {
    if quizes.count == 0 { initQuiz() }
    let quiz = quizes.first
    quizes.removeFirst()
    return quiz!
  }
}
