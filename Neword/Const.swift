//
//  Const.swift
//  Neword
//
//  Created by 郑语悉 on 2022/11/18.
//

import Foundation
import SwiftUI

struct Consts{
    static let colorSet: [Color] = [.blue, .yellow, .red]
}

struct CardViewConsts{
    static let cardRotLimit: CGFloat = 20.0
    static let poopTriggerZone: CGFloat = -0.1
    static let loveTriggerZone: CGFloat = 0.1
    
    static let cardRatio: CGFloat = 1.333
    static let cardCornerRadius: CGFloat = 24.0
    static let cardShadowOffset: CGFloat = 16.0
    static let cardShadowBlur: CGFloat = 16.0
    
    static let labelTextSize: CGFloat = 24.0
    static let labelTextKerning: CGFloat = 6.0
    
    static let motionRemapFromMin: Double = 0.0
    static let motionRemapFromMax: Double = 0.25
    static let motionRemapToMin: Double = 0.0
    static let motionRemapToMax: Double = 1.0
    
    static let springResponse: Double = 0.5
    static let springBlendDur: Double = 0.3
    
    static let iconSize: CGSize = CGSize(width: 96.0, height: 96.0)
}
