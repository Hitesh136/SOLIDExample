//
//  NOTSOLIDSeac.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//

import Foundation
class NOTSOLIDDiver {
    var health: Int {
        didSet {
            if health <= 0 {
                death?()
            }
        }
    }
    
    var death: (() -> ())?
    init(health: Int) {
        self.health = health
    }
    
    func biteShark() {
        health -= 20
    }
    
    func biteBurp() {
        health -= 30
    }
}

class NotSLOIDSea {
    var diver: NOTSOLIDDiver
    init(diver: NOTSOLIDDiver) {
        self.diver = diver
    }
    
    func start() {
        diver.death = {
            return
        }
        diver.biteBurp()
        diver.biteShark()
        diver.biteBurp()
        diver.biteShark()
        diver.biteBurp()
        diver.biteShark() 
    }
}
