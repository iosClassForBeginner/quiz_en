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
  
  private func setupQuizzes() {
    quizes = [
      [
        "quiz": "1. What colour ball should normally be struck by the cue in snooker?",
        "answer": "white",
        "choice_1": "white",
        "choice_2": "mauve",
        "choice_3": "black",
        "choice_4": "orange"
      ],
      [
        "quiz": "2. Which word means a signed document in support of a particular action?",
        "answer": "partition",
        "choice_1": "petition",
        "choice_2": "position",
        "choice_3": "partition",
        "choice_4": "perforation"
      ],
      [
        "quiz": "3. Somebody described as 'butterfingers' would have a propensity for what?",
        "answer": "being clumsy",
        "choice_1": "being clumsy",
        "choice_2": "playing the piano",
        "choice_3": "gardening",
        "choice_4": "cookery"
      ],
    ]
  }
  
  func existNextQuiz() -> Bool {
    return quizes.count != 0
  }
  
  func getQuiz() -> [String: String] {
    if quizes.count == 0 { setupQuizzes() }
    let quiz = quizes.first
    quizes.removeFirst()
    return quiz!
  }
}
