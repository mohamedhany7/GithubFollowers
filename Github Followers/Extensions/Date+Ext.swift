//
//  Date+Ext.swift
//  Github Followers
//
//  Created by Mohamed Hany on 28/03/2024.
//

import Foundation

extension Date {
    func convertToMonthDateFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
