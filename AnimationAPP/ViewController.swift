//
//  ViewController.swift
//  AnimationAPP
//
//  Created by Andrey on 17.06.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
        
    let animations = Animation.getAnimation()
    var number = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presetLabel.text = ""
        curveLabel.text = ""
        forceLabel.text = ""
        durationLabel.text = ""
    }

    @IBAction func startSpringAnimation(_ sender: SpringButton) {
//        animation(number: number)
//        labelText(number: number)
        
        presetLabel.text = "Preset is \(animations[number].preset)"
        curveLabel.text = "Curve is \(animations[number].curve)"
        forceLabel.text = "Force is \(animations[number].force)"
        durationLabel.text = "Duration is \(animations[number].duration)"
        
        springAnimationView.animation = animations[number].preset
        springAnimationView.curve = animations[number].curve
        springAnimationView.force = CGFloat(animations[number].force)
        springAnimationView.duration = CGFloat(animations[number].duration)
        springAnimationView.animate()
        
        if number == (animations.count - 1) {
            number = 0
        } else {
            number += 1
        }
        
        sender.setTitle("Run to \(animations[number].preset)", for: .normal)
    }
    
//    func labelText(number: Int) {
//        presetLabel.text = "Preset is \(animations[number].preset)"
//        curveLabel.text = "Curve is \(animations[number].curve)"
//        forceLabel.text = "Force is \(animations[number].force)"
//        durationLabel.text = "Duration is \(animations[number].duration)"
//    }
//    
//    func animation(number: Int) {
//        springAnimationView.animation = animations[number].preset
//        springAnimationView.curve = animations[number].curve
//        springAnimationView.force = CGFloat(animations[number].force)
//        springAnimationView.duration = CGFloat(animations[number].duration)
//        springAnimationView.animate()
//    }
}


