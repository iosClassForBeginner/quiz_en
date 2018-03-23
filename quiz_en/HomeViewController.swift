//
//  ViewController.swift
//  quiz_en
//
//  Created by Wataru Maeda on 2018-03-21.
//  Copyright © 2018 com.watarumaeda. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tappedStart(_ sender: Any) {
    let next = storyboard!.instantiateViewController(withIdentifier: "QuizViewController")
    navigationController?.pushViewController(next, animated: true)
  }
}

