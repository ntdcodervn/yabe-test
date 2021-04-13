//
//  ServiceBottomSheet.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/14/21.
//

import SwiftUI

struct ServiceBottomSheet: View {
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight/2 ,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background(Color.blue)
        }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight ,alignment: .center).offset(y : UIScreen.screenHeight)
    }
}

struct ServiceBottomSheet_Previews: PreviewProvider {
    static var previews: some View {
        ServiceBottomSheet()
    }
}
