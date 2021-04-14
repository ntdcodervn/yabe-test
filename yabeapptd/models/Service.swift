//
//  Service.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/14/21.
//

import Foundation
import SwiftUI

class ServicesModel: Identifiable, Decodable, Hashable, Equatable {
    
    var id: String
    var download_url: String
    var author: String
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: ServicesModel, rhs: ServicesModel) -> Bool {
            return lhs.id == rhs.id
    }
}
