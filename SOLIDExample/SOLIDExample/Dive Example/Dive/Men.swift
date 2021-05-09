//
//  Men.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation


class Men: Diver {
    var health: Int
    
    var isAlive: Bool {
         health > 0
    }
    
    func bite(freq: Int) {
        health -= freq
    }
    
    init(health: Int) {
        self.health = health
    }
}
