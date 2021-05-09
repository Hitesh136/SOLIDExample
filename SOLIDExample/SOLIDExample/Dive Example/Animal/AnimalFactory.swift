//
//  SharkFactory.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation

class AnimalFactory {
    static func getShark() -> Animal {
        return Shark(freq: 20)
    }
    
    static func getBurp() -> Animal {
        return Burp(freq: 30)
    }
    
    static func getSnake() -> Animal {
        return Snake(freq: 10)
    }
}
