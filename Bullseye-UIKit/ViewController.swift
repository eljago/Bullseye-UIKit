//
//  ViewController.swift
//  Bullseye-UIKit
//
//  Created by Arturo Espinoza Carrasco on 20-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var currentValue: Int = 0
  var targetValue: Int = 0
  
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    startNewRound()
  }

  @IBAction func showAlert() {
    
    let difference = abs(currentValue - targetValue)
    let points = 100 - difference
    let message = "You scored \(points) points"
    let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
    let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
    
    startNewRound()
  }
  
  @IBAction func sliderMoved(_ slider: UISlider) {
    updateCurrentValue()
  }
  
  func updateCurrentValue() {
    let roundedValue = (slider.value * 100).rounded()
    currentValue = Int(roundedValue)
  }
  
  func startNewRound() {
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue) / 100.0
    updateLabels()
  }
  
  func updateLabels() {
    targetLabel.text = String(targetValue)
  }
}

