//
//  Switch.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/10/21.
//

import SwiftUI

struct Switch: View {
    @EnvironmentObject var appstore: AppStore
    @State var isNavigationBarHidden: Bool = true
    
    private func endEditing() {
        UIApplication.shared.endEditing()
    }

    var body: some View {
        ZStack {
            if(appstore.currentScreen == ScreenName.AuthStack) {
                NavigationView(
                    content: {
                        LoginMethod().navigationBarTitle("Hidden Title")
                            .navigationBarHidden(self.isNavigationBarHidden)
                            .onAppear {
                                self.isNavigationBarHidden = true
                            }
                    }
                ).onTapGesture {
                    endEditing()
                }
            } else {
                MainTabView()
            }
        }
    }
}

struct Switch_Previews: PreviewProvider {
    static var previews: some View {
        Switch()
    }
}
