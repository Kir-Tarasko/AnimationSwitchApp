//
//  AnimationModelView.swift
//  AnimationSwitchApp
//
//  Created by Кирилл Тараско on 11.01.2022.
//

import Spring


class SpringAnimations {
    static var animations: [AnimationModels] {
        getAnimation()
    }
    
    static let presets = ["slideLeft",
                          "slideRight",
                          "slideDown",
                          "fall",
                          "shake",
                          "wobble",
                          "fadeIn",
                          "slideUp",
                          "squeezeLeft",
                          "zoomIn",
                          "zoomOut",
                          "flash",
                          "flipX",
                          "flipY",
                          "fall"]
    
    static let curves = ["easeInExpo",
                         "spring",
                         "linear",
                         "easeIn",
                         "easeOut",
                         "easeInOut",
                         "easeInOutCubic",
                         "easeOutCubic",
    ]
    
    static func getAnimation() -> [AnimationModels] {
        var animations: [AnimationModels] = []
        for animation in presets {
            let delay = { Double.random(in: 0...3) }
            let duration = { Double.random(in: 0...3) }
            let force = { Double.random(in: 0...3) }
            let curve = {self.curves.randomElement() }
            animations.append(AnimationModels(preset: animation, curve: curve() ?? "easeInExpo", force: force(), duration: duration(), delay: delay()))
        }
        return animations
    }
    
    static func switchAnimation() -> AnimationModels {
        animations.randomElement() ?? animations[0]
    }
    
}
