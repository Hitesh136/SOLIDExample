//
//  Sea.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation


class Sea {
    var diver: Diver
    var animals: [Animal]
    
    init(diver: Diver, animals: [Animal]) {
        self.diver = diver
        self.animals = animals
    }
    
    func startFloating() {
            
        for animal in animals {
            diver.bite(freq: animal.freq)
            if !diver.isAlive {
                break
            }
        }
    }
}
