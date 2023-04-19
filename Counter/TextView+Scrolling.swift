//
//  TextView+Scrolling.swift
//  Counter
//
//  Created by Nikolay Kozlov on 19.04.2023.
//

import UIKit

extension UITextView {
    
    func scrollToDown() {
        let range = NSRange(location: text.count - 1, length: 0)
        scrollRangeToVisible(range)
    }
}
