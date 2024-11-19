//
//  DateFormatter.swift
//  iDouble
//
//  Created by Nicolò Amabile on 18/11/24.
//

import Foundation

class DateManager {
    static func formatter_dd_mm(date : Date) -> String {
        let formatterDate = DateFormatter()
        
        formatterDate.dateFormat = "dd/MM/yyyy"
        formatterDate.locale = Locale(identifier: "it_IT")
        
        let dateString = formatterDate.string(from: date)
        return dateString
    }
    
    static func formatter_mm_dd(date : Date) -> String {
        let formatterDate = DateFormatter()
        
        formatterDate.dateFormat = "MM/dd/yyyy"
        formatterDate.locale = Locale(identifier: "it_IT")
        
        let dateString = formatterDate.string(from: date)
        return dateString
    }
    
    static func getTimestamp(date : Date) -> String {
        let timestampSec = Int(date.timeIntervalSince1970)
        
        return String(timestampSec)
    }
    
    static func convertFromTimestamp_dd_mm(timestamp : String) -> String {
        guard let timestampSec = Int(timestamp) else { return "" }
        let date = Date(timeIntervalSince1970: TimeInterval(timestampSec))
        
        return formatter_dd_mm(date: date)
    }
}
