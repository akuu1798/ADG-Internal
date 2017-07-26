//
//  Event.swift
//  ADG Internal
//
//  Created by Akshat Agarwal on 06/07/17.
//  Copyright © 2017 Akshat Agarwal. All rights reserved.
//

import Foundation
import UIKit

class Event {

    var event = ""
    var work = ""
    var date  = ""
    
    init(event: String, work: String, date: String)
    {
        
        self.event = event
        self.work = work
        self.date = date
    
    }

}
