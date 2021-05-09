//
//  DiverFactory.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation

class DiverFactory {
    static func getMenDiver() -> Diver {
        return Men(health: 100)
    }
}
