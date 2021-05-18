//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 05/04/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  @IBAction func heightSliderChange(_ sender: UISlider) {
    print(String(format: "%.2f", sender.value))
  }
  
  @IBAction func weightSliderChange(_ sender: UISlider) {
    print(Int(sender.value))
  }
  
}

