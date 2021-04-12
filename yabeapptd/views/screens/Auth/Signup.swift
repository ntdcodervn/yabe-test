//
//  Signup.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/10/21.
//

import SwiftUI

struct Signup: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @EnvironmentObject var appStore:AppStore
    
    func goBack() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    @State var phone = ""
    @State var fullname = ""
    @State var checked = false



    var body: some View {
        ZStack(content: {
            Button(action: {
                goBack()
            }, label: {
                Image("arrow_left_icon")
            }).frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).position(x: 30, y: 60)
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                HStack(content: {
                    Text("Đăng ký tài khoản").bold().font(.system(size: 34)).foregroundColor(.white)
                }).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading).padding(.leading, 40).padding(.top, 56)
                
                
                HStack(content: {
                    Image("phone_icon").padding(.leading,20)
                    TextField("nhập số điện thoại",text: $phone).foregroundColor(ColorConstants.Grey3).padding(.leading, 5).padding(.top, 13).padding(.bottom, 13).frame(width: UIScreen.screenWidth-120,  alignment: .leading).font(.system(size: 14))    .keyboardType(.numberPad)

                }).background(Color.white).cornerRadius(100).padding(.top, 50)
                
                HStack(content: {
                    Image("user_icon").padding(.leading,20)
                    TextField("nhập họ và tên",text: $fullname).foregroundColor(ColorConstants.Grey3).padding(.leading, 5).padding(.top, 13).padding(.bottom, 13).frame(width: UIScreen.screenWidth-120,  alignment: .leading).font(.system(size: 14))    .keyboardType(.numberPad)

                }).background(Color.white).cornerRadius(100).padding(.bottom, 20).padding(.top, 20)
                
                HStack(content: {
                    ZStack(
                        content: {
                            Circle()            .strokeBorder(Color.white,lineWidth: 2)
                            if checked {
                                Circle().frame(width: 8, height: 8, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(Color.white)
                            }

                        }
                    ).frame(width: 17, height: 17, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("Bạn đã xem và đồng ý với Chính sách bảo mật và Điều khoản sử dụng").foregroundColor(.white).padding(.top, 13).padding(.bottom, 13).frame(width: UIScreen.screenWidth-120,  alignment: .leading).font(.system(size: 14))    .keyboardType(.numberPad)

                }).padding(.bottom, 20).onTapGesture {
                    checked = !checked
                }
                
                
                if checked {
                    Button(action: {
                        appStore.changeScreen(newScreen: ScreenName.MainStack)
                    }, label: {
                        Text("Tiếp tục").foregroundColor(.white)
                    })
                }else {
                    Text("Tiếp tục").foregroundColor(ColorConstants.Disable)
                }
                
                
                Spacer()
               
                
            }).padding(.top, 90)
         
        }).navigationBarBackButtonHidden(true).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight+20, alignment: .bottom).background(Image("backgroudSplash").resizable()).navigationBarTitle("Hidden Title")
        .navigationBarHidden(true)
    
    }
}

struct Signup_Previews: PreviewProvider {
    static var previews: some View {
        Signup()
    }
}
