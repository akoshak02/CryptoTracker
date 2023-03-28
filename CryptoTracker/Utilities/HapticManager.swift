//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Abdulkarim Koshak on 3/18/23.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
