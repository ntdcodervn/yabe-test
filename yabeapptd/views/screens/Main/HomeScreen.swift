//
//  HomeScreen.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/11/21.
//

import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var appStore:AppStore

    var body: some View {
        ZStack(content: {
            VStack(content: {
                Text("HomeScreen")
                Button(action: {
                    appStore.changeScreen(newScreen: ScreenName.AuthStack)
                }, label: {
                    Text("Đăng xuất")
                })
            })
        })
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
