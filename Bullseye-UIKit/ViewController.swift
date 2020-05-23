//
//  ViewController.swift
//  Bullseye-UIKit
//
//  Created by Arturo Espinoza Carrasco on 20-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func showAlert() {
    let alert = UIAlertController(title: "Hello World!", message: "This is my first App!", preferredStyle: .alert)
    let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
  }
}

