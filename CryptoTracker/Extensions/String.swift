//
//  String.swift
//  CryptoTracker
//
//  Created by Abdulkarim Koshak on 3/24/23.
//

import Foundation

extension String {
    
    var removeHTMLOccurrences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
