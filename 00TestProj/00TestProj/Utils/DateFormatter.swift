//
//  MagicFormatter.swift
//  00TestProj
//
//  Created by Александр Фофонов on 27.01.2023.
//

import Foundation



protocol DateFormatterProtocol {
    
    func string(from date: Date) -> String
    
    func date(from string: String) -> Date?
    
}

extension DateFormatter : DateFormatterProtocol {}

extension Date {

    static func - (lhs: Date, rhs: Date) -> TimeInterval {
        
        return lhs.timeIntervalSinceReferenceDate - rhs.timeIntervalSinceReferenceDate
        
    }

}
