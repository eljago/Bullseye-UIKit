//
//  AboutViewController.swift
//  Bullseye-UIKit
//
//  Created by Arturo Espinoza Carrasco on 26-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
  
  @IBOutlet weak var webView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
      let url = URL(fileURLWithPath: htmlPath)
      let request = URLRequest(url: url)
      webView.load(request)
    }
  }
  
  @IBAction func close() {
    dismiss(animated: true, completion: nil)
  }
}
