//
//  AppStore.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/10/21.
//

import Foundation

class AppStore: ObservableObject {
    @Published var currentScreen = ScreenName.AuthStack
    
    func changeScreen(newScreen: ScreenName) {
        self.currentScreen = newScreen
    }
    
}
