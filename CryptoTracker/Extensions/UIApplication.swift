//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Abdulkarim Koshak on 3/15/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
