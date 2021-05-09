//
//  SeaFactory.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation

class SeaFactory {
    static func getSeaObject() -> Sea {
        let diver = DiverFactory.getMenDiver()
        
        let burp1 = AnimalFactory.getBurp()
        let shark1 = AnimalFactory.getShark()
        let burp2 = AnimalFactory.getBurp()
        let shark2 = AnimalFactory.getShark()
        let shark3 = AnimalFactory.getShark()
        let burp3 = AnimalFactory.getBurp()
        let snake = AnimalFactory.getSnake()
        return Sea(diver: diver, animals: [burp1, shark1, burp2, shark2, shark3, burp3, snake])
    }
}
