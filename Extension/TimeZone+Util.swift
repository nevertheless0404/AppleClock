//
//  TimeZone+Util.swift
//  AppleClock
//
//  Created by 유뇽 on 4/28/24.
//

import Foundation

fileprivate let formatter = DateFormatter()
fileprivate let offsetFormatter = DateComponentsFormatter()

extension TimeZone {
    var currentTime: String? {
        formatter.timeZone = self
        formatter.dateFormat = "h:mm"
        
        return formatter.string(from: .now)
    }
    
    var timePeriod: String? {
        formatter.timeZone = self
        formatter.dateFormat = "a"
        
        return formatter.string(from: .now)
        
    }
    
    var city: String? {
        let id = identifier
        let city = id.components(separatedBy: "/").last
        return city 
    }
    
    var timeOffset: String? {
        //let offset = TimeZone.current.secondsFromGMT() - secondsFromGMT()
        
        let offset = secondsFromGMT() - TimeZone.current.secondsFromGMT()
        let comp = DateComponents(second: offset)
        
        if offset.isMultiple(of: 3600){
            offsetFormatter.allowedUnits = [.hour]
            offsetFormatter.unitsStyle = .full
        } else {
            offsetFormatter.allowedUnits = [.hour, .minute]
            offsetFormatter.unitsStyle = .positional
        }
        
        let offsetStr = offsetFormatter.string(from: comp) ?? "\(offset / 3600)시간"
        
        let time = Date(timeIntervalSinceNow: TimeInterval(offset))
        
        let cal = Calendar.current
        if cal.isDateInToday(time) {
            return "오늘, \(offsetStr)시간"
        } else if cal.isDateInYesterday(time) {
            return "어제, \(offsetStr)시간"
        } else if cal.isDateInTomorrow(time) {
            return "내일, \(offsetStr)시간"
        } else {
            return nil 
        }
        
    }
}
