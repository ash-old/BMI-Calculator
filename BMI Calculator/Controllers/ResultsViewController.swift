//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 19/05/2021.
//

import UIKit

class ResultsViewController: UIViewController {
  
  var bmiValue: String?
  var advice: String?
  var color: UIColor?

  @IBOutlet weak var bmiLabel: UILabel!
  @IBOutlet weak var adviceLabel: UILabel!
//  @IBOutlet weak var background: UIImageView!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    
    bmiLabel.text = bmiValue
    adviceLabel.text = advice
    view.backgroundColor = color
    
    }

  @IBAction func recalculatePressed(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
  

}
