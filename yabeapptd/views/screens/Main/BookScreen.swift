//
//  BookScreen.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/12/21.
//

import SwiftUI

struct BookScreen: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in

            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Các gói dịch vụ").bold().font(.system(size: 18)).padding(.top,geometry.safeAreaInsets.top+10)
                    
                }
                
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }    }
}

struct BookScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookScreen()
    }
}
