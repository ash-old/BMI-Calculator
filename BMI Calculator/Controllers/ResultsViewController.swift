//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 19/05/2021.
//

import UIKit

class ResultsViewController: UIViewController {
  
  var bmiValue: String?

  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var adviceLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    bmiLabel.text = bmiValue
    
    }

  @IBAction func recalculatePressed(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
  

}
