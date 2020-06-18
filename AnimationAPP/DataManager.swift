//
//  DataManager.swift
//  AnimationAPP
//
//  Created by Andrey on 18.06.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import UIKit

class DataManager {

    static let shared = DataManager()
    
    private init() {}
    
    let preset = ["swing", "squeeze", "shake", "zoomOut", "fadeInRight"]
    let curve = ["easeInOutBack", "easeInOutQuint", "easeInSine", "easeInOutExpo", "easeInQuint"]
    let force = [1, 2, 3, 4, 5]
    let duration = [5, 4, 3, 2, 1]
}


