//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Ash Oldham on 05/04/2021.
//

import UIKit

class CalculateViewController: UIViewController {
  

  var calculatorBrain = CalculatorBrain()

  @IBOutlet weak var heightLabel: UILabel!
  @IBOutlet weak var weightLabel: UILabel!
  @IBOutlet weak var heightSlider: UISlider!
  @IBOutlet weak var weightSlider: UISlider!
  
  override func viewDidLoad() {
        super.viewDidLoad()
    heightSlider.value = 1.5
    weightSlider.value = 100
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
    
    calculatorBrain.calculateBMI(height: height, weight: weight)
    
    //set up and passing BMI data from ViewController to ResultsViewController.
    //use performSegue method on self. Use identifier from segue.
    self.performSegue(withIdentifier: "goToResults", sender: self)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResults" {
      let destinationVC = segue.destination as! ResultsViewController
      destinationVC.bmiValue = calculatorBrain.getBMIValue()
      destinationVC.advice = calculatorBrain.getAdvice()
      destinationVC.color = calculatorBrain.getColor()
    }
  }
}

