//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 05/04/2021.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  @IBAction func heightSliderChange(_ sender: UISlider) {
    heightLabel.text = "\(String(format: "%.2f", sender.value))m"
  }
  
  @IBAction func weightSliderChange(_ sender: UISlider) {
    weightLabel.text = "\(String(Int(sender.value)))kg"
    
  }
  
}

