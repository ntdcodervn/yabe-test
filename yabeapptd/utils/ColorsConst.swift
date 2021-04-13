//
//  ColorsConst.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/11/21.
//

import Foundation
import SwiftUI

struct ColorConstants {
    static let LinearR3 = LinearGradient(gradient: Gradient(colors: [Color.init(hex: "#FF7074"), Color.init(hex:"#FEA085")]), startPoint: .top, endPoint: .bottom)
    static let LinearR2 = RadialGradient(gradient: Gradient(colors: [Color.init(hex: "#FEA074"), Color.init(hex:"#FEA085")]),center: .center ,startRadius: 20, endRadius: 200)
    static let Grey3 = Color.init(hex: "#828282")
    static let Grey1 = Color.init(hex: "#333333")

    static let Disable = Color.init(hex: "#ffc6be")
    static let BlueBGFacebook = Color.init(hex: "#1877F2")
    static let PrimaryD = Color.init(hex: "#FF7074")


 }
