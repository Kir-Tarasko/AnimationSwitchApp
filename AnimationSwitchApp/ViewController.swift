//
//  ViewController.swift
//  AnimationSwitchApp
//
//  Created by Кирилл Тараско on 11.01.2022.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var animationLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private var switchAnimation = SpringAnimations.switchAnimation()
    
    @IBAction func springAnimationSwitch(_ sender: SpringButton) {
       
        springAnimationView.animation = switchAnimation.preset
        springAnimationView.animate()
        
        animationLabel.text = switchAnimation.preset
        curveLabel.text = switchAnimation.curve
        forceLabel.text = String (format: "Force: %02f", switchAnimation.force )
        durationLabel.text = String(format: "Duration: %02f", switchAnimation.duration)
        delayLabel.text = String(format: "Delay: %02f", switchAnimation.delay)
        
        switchAnimation = SpringAnimations.switchAnimation()
        
        sender.setTitle("Next: \(switchAnimation.preset)", for: .normal)
    }
}

