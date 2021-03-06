//
//  SOLIDServiceScheduler.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDServiceScheduler: ServiceScheduler {
    
    // MARK: - Public methods
    
    let timer: TimerPortocol
    private var services: [Service]
    
    init(timer: TimerPortocol) {
        self.timer = timer
        self.services = []
    }
    
    mutating func registerService(service: Service) {
        services.append(service)
    }
    
    func start() {
        timer.onTick() {
            tick in
            
            self.timerDidTick(tick: tick)
        }
        
        timer.start()
    }
    
    func stop() {
        timer.stop()
    }
    
    // MARK: - Private methods
    
    private func timerDidTick(tick: Int) {
        runServicesWithTick(tick: tick)
    }
    
    private func runServicesWithTick(tick: Int) {
        for service in services {
            if (shouldExecuteFrequency(frequency: service.frequency(), onTick:tick)) {
                service.execute()
            }
        }
    }
    
    private func shouldExecuteFrequency(frequency: Int, onTick tick: Int) -> Bool {
        return (tick % frequency) == 0
    }
    
}
