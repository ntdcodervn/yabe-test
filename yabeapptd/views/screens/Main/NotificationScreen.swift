//
//  NotificationScreen.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/12/21.
//

import SwiftUI

struct NotificationScreen: View {
    var body: some View {
        ZStack {
            GeometryReader { geometry in

            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Thông báo").bold().font(.system(size: 18)).padding(.top,geometry.safeAreaInsets.top+10)
                    Image("no_noti").resizable().frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth-25, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("CHƯA CÓ GÌ Ạ!").foregroundColor(ColorConstants.PrimaryD).bold().font(.system(size: 16))
                }
                
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct NotificationScreen_Previews: PreviewProvider {
    static var previews: some View {
        NotificationScreen()
    }
}
