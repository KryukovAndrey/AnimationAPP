//
//  Animation.swift
//  AnimationAPP
//
//  Created by Andrey on 18.06.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

struct Animation {
    let preset: String //анимация
    let curve: String //кривая
    let force: Int //сила
    let duration: Int //длительность
    
    static func getAnimation() -> [Animation] {
        var animationArray: [Animation] = []
        
        let preset = DataManager.shared.preset.shuffled()
        let curve = DataManager.shared.curve.shuffled()
        let force = DataManager.shared.force.shuffled()
        let duration = DataManager.shared.duration.shuffled()
        
        for index in 0..<preset.count {
            let animation = Animation(preset: preset[index],
                                      curve: curve[index],
                                      force: force[index],
                                      duration: duration[index])
            
            animationArray.append(animation)
        }
        return animationArray
    }
}
