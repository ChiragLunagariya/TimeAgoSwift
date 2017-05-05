//
//  TimeAgo.swift
//  TimeAgo
//
//  Created by SOTSYS140 on 30/01/16.
//  Copyright © 2016 SOTSYS140. All rights reserved.
//

import UIKit

public class TimeAgo: NSObject {
  
    public override init() {
        print("TimeAgo Framework")
    }

    public func timeAgoStringFromDate(date: NSDate) -> NSString? {
        let formatter = NSDateComponentsFormatter()
        formatter.unitsStyle = .Full
        
        let now = NSDate()
        
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components([NSCalendarUnit.Year, .Month, .WeekOfMonth, .Day, .Hour, .Minute, .Second],
            fromDate: date,
            toDate: now,
            options:NSCalendarOptions(rawValue: 0))
        
        if components.year > 0 {
            formatter.allowedUnits = .Year
        } else if components.month > 0 {
            formatter.allowedUnits = .Month
        } else if components.weekOfMonth > 0 {
            formatter.allowedUnits = .WeekOfMonth
        } else if components.day > 0 {
            formatter.allowedUnits = .Day
        } else if components.hour > 0 {
            formatter.allowedUnits = .Hour
        } else if components.minute > 0 {
            formatter.allowedUnits = .Minute
        } else {
            formatter.allowedUnits = .Second
        }
        
        let formatString = NSLocalizedString("%@ ago", comment: "Used to say how much time has passed. e.g. '2 hours ago'")
        
        guard let timeString = formatter.stringFromDateComponents(components) else {
            return nil
        }
        return String(format: formatString, timeString)
    }
}
