//
//  SOLIDSchedulerFactory.swift
//  SOLIDExample
//
//  Created by Harlan Kellaway on 1/12/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

struct SOLIDSchedulerFactory {
    
    static func twitterServiceSchedulerWithUserID(userID: String) -> ServiceScheduler {
        let timer = clockTimer()
        var twitterScheduler = SOLIDServiceScheduler(timer: timer)
        
        twitterScheduler.registerService(service: SOLIDServiceFactory.twitterTimelineServiceWithUserID(userID: userID))
        twitterScheduler.registerService(service: SOLIDServiceFactory.twitterProfileServiceWithUserID(userID: userID))
        
        return twitterScheduler
    }
    
    static func clockTimer() -> TimerPortocol {
        return SOLIDTimer()
    }
    
}
