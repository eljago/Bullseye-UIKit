//
//  ViewController.swift
//  Bullseye-UIKit
//
//  Created by Arturo Espinoza Carrasco on 20-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var currentValue = 0
  var targetValue = 0
  var score = 0
  var round = 0
  
  @IBOutlet weak var slider: UISlider!
  @IBOutlet weak var targetLabel: UILabel!
  @IBOutlet weak var scoreLabel: UILabel!
  @IBOutlet weak var roundLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    startNewRound()
  }

  @IBAction func showAlert() {
    
    let difference = abs(currentValue - targetValue)
    var points = 100 - difference
    
    let title: String
    if difference == 0 {
      title = "Perfect!"
      points += 100
    } else if difference < 5 {
      title = "You almost had it!"
      if difference == 1 {
        points += 50
      }
    } else if difference < 10 {
      title = "Pretty good!"
    } else {
      title = "Not even close..."
    }
    
    score += points
    
    let message = "You scored \(points) points"
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
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
    round += 1
    targetValue = Int.random(in: 1...100)
    currentValue = 50
    slider.value = Float(currentValue) / 100.0
    updateLabels()
  }
  
  func updateLabels() {
    targetLabel.text = String(targetValue)
    scoreLabel.text = String(score)
    roundLabel.text = String(round)
  }
}

