//
//  ViewController.swift
//  HW 3.1 SpringAnimation
//
//  Created by Артём Потёмкин on 01.08.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
   
    // MARK: - IBOutlets
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet var startAnimationButton: SpringButton!
    
    // MARK: - Private properties
    private var currentAnimation = Animation.getAnimation()
    
    // MARK: - View Life Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabels()
        
        springAnimationView.layer.cornerRadius = 10
        startAnimationButton.layer.cornerRadius = 10
    }
    
    // MARK: - "IBActions"
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        
        springAnimationView.animation = currentAnimation.preset
        springAnimationView.curve = currentAnimation.curve
        springAnimationView.force = currentAnimation.force
        springAnimationView.duration = currentAnimation.duration
        springAnimationView.delay = currentAnimation.delay
        springAnimationView.animate()
        
        setupLabels()
        
        let nextAnimation = Animation.getAnimation()
        currentAnimation = nextAnimation
        startAnimationButton.setTitle("Run \(nextAnimation.preset)", for: .normal)
    }
    
    // MARK: - Private Methods
    private func setupLabels() {
        presetLabel.text = "preset: \(currentAnimation.preset)"
        curveLabel.text = "curve: \(currentAnimation.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", currentAnimation.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", currentAnimation.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", currentAnimation.delay))"
    }
}

