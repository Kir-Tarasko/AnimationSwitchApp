//
//  AnimationModelView.swift
//  AnimationSwitchApp
//
//  Created by Кирилл Тараско on 11.01.2022.
//

import Spring


class SpringAnimations {
    static var animations: [AnimationModel] {
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
    
    static func getAnimation() -> [AnimationModel] {
        var animations: [AnimationModel] = []
        for animation in presets {
            let delay = { Double.random(in: 0...3) }
            let duration = { Double.random(in: 0...3) }
            let force = { Double.random(in: 0...3) }
            let curve = { curves.randomElement() }
            animations.append(AnimationModel(preset: animation, curve: curve() ?? "", force: force(), duration: duration(), delay: delay()))
        }
        return animations
    }
    
    static func switchAnimation() -> AnimationModel {
        animations.randomElement() ?? animations[0]
    }
    
}
