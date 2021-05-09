//
//  Diver.swift
//  SOLIDExample
//
//  Created by Hitesh Agarwal on 09/05/21.
//  Copyright © 2021 Prolific Interactive. All rights reserved.
//

import Foundation
protocol Diver {
    var health: Int { get set }
    var isAlive: Bool { get }
    func bite(freq: Int)
}
