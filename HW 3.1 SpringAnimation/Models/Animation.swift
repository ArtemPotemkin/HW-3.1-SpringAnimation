//
//  Animation.swift
//  HW 3.1 SpringAnimation
//
//  Created by Артём Потёмкин on 01.08.2023.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let animation = Animation(
            preset: DataStore.shared.presets.randomElement() ?? "pop",
            curve: DataStore.shared.curves.randomElement() ?? "easeIn",
            force: Double.random(in: 1.0...2.3),
            duration: Double.random(in: 0.5...2.0),
            delay: Double.random(in: 0.0...0.8)
        )
        return animation
    }
    
}
