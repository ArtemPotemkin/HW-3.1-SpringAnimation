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
    
    let animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
    }


    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
      
    }
}

