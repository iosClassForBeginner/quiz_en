//
//  QuizViewController.swift
//  quiz_en
//
//  Created by Wataru Maeda on 2018-03-21.
//  Copyright © 2018 com.watarumaeda. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tappedAnswer(_ sender: UIButton) {
    let next = storyboard!.instantiateViewController(withIdentifier: "ResultViewController")
    navigationController?.pushViewController(next, animated: true)
  }
}
