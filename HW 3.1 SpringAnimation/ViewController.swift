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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 15
    }


    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.curve = "easeOut"
        springAnimationView.force = 2
        springAnimationView.animate()
        
        sender.animation = "fadeInLeft"
    
        sender.animate()
    }
}

