//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 19/05/2021.
//

// need UIKit for UIViewController
import UIKit

class SecondViewController: UIViewController {
  
  var bmiValue = "0.0"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .red
    
    let label = UILabel()
    label.text = bmiValue
    label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
    view.addSubview(label)
  }
  
}
