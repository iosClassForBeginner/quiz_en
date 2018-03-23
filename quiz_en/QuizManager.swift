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
        "quiz": "quiz 1",
        "answer": "choice 1-1",
        "choice_1": "choice 1-1",
        "choice_2": "choice 1-2",
        "choice_3": "choice 1-3",
        "choice_4": "choice 1-4"
      ],
      [
        "quiz": "quiz 2",
        "answer": "choice 2-2",
        "choice_1": "choice 2-1",
        "choice_2": "choice 2-2",
        "choice_3": "choice 2-3",
        "choice_4": "choice 2-4"
      ],
      [
        "quiz": "quiz 3",
        "answer": "choice 3-3",
        "choice_1": "choice 3-1",
        "choice_2": "choice 3-2",
        "choice_3": "choice 3-3",
        "choice_4": "choice 3-4"
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
