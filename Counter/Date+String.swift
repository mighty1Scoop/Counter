//
//  Date+String.swift
//  Counter
//
//  Created by Nikolay Kozlov on 19.04.2023.
//

import Foundation

extension Date {
    
    func getStringDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "[dd/MM HH:mm:ss]"
        
        return dateFormatter.string(from: .now)
    }
}

class Popa {
    var a = Date.get
}
