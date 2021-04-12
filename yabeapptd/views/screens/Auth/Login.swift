//
//  Login.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/10/21.
//

import SwiftUI

struct Login: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @State var phone = ""
    
    private func goBack() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    var body: some View {
            ZStack(content: {
                Button(action: {
                    goBack()
                }, label: {
                    Image("arrow_left_icon")
                }).frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).position(x: 30, y: 60)
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Image("logoWithText") .resizable().frame(width: 146, height: 146, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    HStack(content: {
                        Image("phone_icon").padding(.leading,20)
                        TextField("nhập số điện thoại",text: $phone).foregroundColor(ColorConstants.Grey3).padding(.leading, 5).padding(.top, 13).padding(.bottom, 13).frame(width: UIScreen.screenWidth-120,  alignment: .leading).font(.system(size: 14))    .keyboardType(.numberPad)

                    }).background(Color.white).cornerRadius(100).padding(.bottom, 20).padding(.top, 40)
                   
                   
                    
                    Spacer()
                }).padding(.top, 90)
                NavigationLink(destination: Signup()) { Text("Tiếp tục").foregroundColor(.white) }
            }).navigationBarBackButtonHidden(true).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight+20, alignment: .bottom).background(Image("backgroudSplash").resizable()).navigationBarTitle("Hidden Title")
            .navigationBarHidden(true)
          
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
