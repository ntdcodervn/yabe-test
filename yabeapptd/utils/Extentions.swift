//
//  Extentions.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/11/21.
//

import Foundation
import SwiftUI
import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
