//
//  ViewController.swift
//  HW 3.1 SpringAnimation
//
//  Created by Артём Потёмкин on 01.08.2023.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {


    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var startAnimationButton: SpringButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
    }


    @IBAction func startSpringAnimation(_ sender: SpringButton) {
      
    }
}

