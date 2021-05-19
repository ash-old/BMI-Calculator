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
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
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
  
  @IBAction func calculatePressed(_ sender: UIButton) {
    let weight = weightSlider.value
    let height = heightSlider.value
    let BMI = weight / pow(height, 2)
    
    //set up and passing BMI data from ViewController to SecondViewController.
    
    //initialise SecondController
    let secondVC = SecondViewController()
    
    //assign bmi output to bmiValue variable
    secondVC.bmiValue = (String(format: "%.1f", BMI))
    
    //present data to secondViewController
    self.present(secondVC, animated: true, completion: nil)
  }
}

