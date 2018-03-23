//
//  QuizViewController.swift
//  quiz_en
//
//  Created by Wataru Maeda on 2018-03-21.
//  Copyright © 2018 com.watarumaeda. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
  
  let quiz = QuizManager.shared.getQuiz()
  
  @IBOutlet weak var questionLabel: UILabel!
  @IBOutlet weak var coiceButton1: UIButton!
  @IBOutlet weak var coiceButton2: UIButton!
  @IBOutlet weak var coiceButton3: UIButton!
  @IBOutlet weak var coiceButton4: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    questionLabel.text = quiz["quiz"]
    coiceButton1.setTitle(quiz["choice_1"], for: .normal)
    coiceButton2.setTitle(quiz["choice_2"], for: .normal)
    coiceButton3.setTitle(quiz["choice_3"], for: .normal)
    coiceButton4.setTitle(quiz["choice_4"], for: .normal)
  }
  
  @IBAction func tappedAnswer(_ sender: UIButton) {
    
    if quiz["answer"] != sender.titleLabel?.text { return }
    
    let isExist = QuizManager.shared.isExistNextQuiz()
    let next = isExist ?
      storyboard!.instantiateViewController(withIdentifier: "QuizViewController") :
      storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
    navigationController?.pushViewController(next, animated: true)
  }
}
