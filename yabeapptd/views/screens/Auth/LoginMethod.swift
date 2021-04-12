//
//  LoginMethod.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/11/21.
//

import SwiftUI

struct LoginMethod: View {
    
    
    var body: some View {
        VStack(content: {
            VStack(content: {
                Image("logoWithColor")

            }).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight*0.35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).padding(.top , 50)
            
            VStack(content: {
                ZStack(content: {
                    Image("polyLoginMethod").resizable().frame(height : 106)
                })
                HStack(alignment: .center, spacing: nil, content: {
                    NavigationLink(
                        destination: Login(),
                        label: {
                                HStack(content: {
                                    Image("phone_icon").padding(.leading,20)
                                    Text("Đăng nhập số điện thoại").foregroundColor(ColorConstants.Grey3).padding(.leading, 5).padding(.top, 13).padding(.bottom, 13).frame(width: UIScreen.screenWidth-100,  alignment: .leading).font(.system(size: 14))
                                }).background(Color.white).cornerRadius(100)
                                                    })
                    
                }).padding(.top,50)
                
                HStack(alignment: .center, spacing: nil, content: {
                   
                    Text("Bằng cách đăng nhập, Bạn đã đồng ý với Chính sách bảo mật và điều khoản sử dụng").font(.system(size: 14)).foregroundColor(Color.white).padding(.leading,20).padding(.trailing, 20).multilineTextAlignment(.center)
                    
                }).padding(.top,35)
                
                HStack(alignment: .center, spacing: nil, content: {
                   
                    Text("Hoặc sử dụng tài khoản mạng xã hội").font(.system(size: 12)).foregroundColor(Color.white).padding(.leading,20).padding(.trailing, 20).multilineTextAlignment(.center)
                    
                }).padding(.top,35)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30, content: {
                    Button(action: {}, label: {
                        VStack( content: {
                            Image("apple_icon")
                        }
                        ).frame(width: 44, height: 44, alignment:.center).background(Color.white).cornerRadius(50)
                    })
                    Button(action: {}, label: {
                        VStack( content: {
                            Image("facebook_icon")
                        }
                        ).frame(width: 44, height: 44, alignment:.center).background(ColorConstants.BlueBGFacebook).cornerRadius(50)
                    })
                    Button(action: {}, label: {
                        VStack( content: {
                            Image("google_icon")
                        }
                        ).frame(width: 44, height: 44, alignment:.center).background(Color.white).cornerRadius(50)
                    })
                }).padding(.top,35)
           
                
                Spacer()
                

            }).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight*0.65, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).background( ColorConstants.LinearR3)
        }).frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}

struct LoginMethod_Previews: PreviewProvider {
    static var previews: some View {
        LoginMethod()
    }
}
