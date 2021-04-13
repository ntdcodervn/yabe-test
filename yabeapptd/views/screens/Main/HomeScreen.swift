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
            ScrollView(showsIndicators : false) {
                VStack(content: {
                    HStack{
                        Text("Xin chào,").font(.system(size: 16))
                        Text("Tên khách hàng").foregroundColor(ColorConstants.PrimaryD).bold().font(.system(size: 16))
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("bill_icon")
                        })

                    }.padding(.leading, 20).padding(.trailing, 20).padding(.top, 30)
                    
                    HStack{
                        Image("union_icon")

                        Text("Hội viên").font(.system(size: 14))
                        Divider()

                        Text("Điểm 44").font(.system(size: 14))
                        Image("right_icon")

                        Spacer()
                        

                    }.padding(.leading, 20).padding(.trailing,20).frame(height : 20)
                    
                    HStack{
                        Text("Tên khách hàng").foregroundColor(ColorConstants.Grey1).bold().font(.system(size: 16)).shadow(color: ColorConstants.PrimaryD, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                    }.padding()
                    
                    HStack {
                        VStack {
                            Image("service_1").resizable().frame(width: UIScreen.screenWidth/3-40, height: UIScreen.screenWidth/3-50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Thanh lịch").foregroundColor(ColorConstants.Grey1).bold()
                            HStack {
                                Text("399k -").font(.system(size: 14)).bold().foregroundColor(ColorConstants.Grey3)
                                Text("47 phút").font(.system(size: 14)).foregroundColor(ColorConstants.Grey3)
                            }
                        }
                        Spacer()
                        
                        VStack {
                            Image("service_2").resizable().frame(width: UIScreen.screenWidth/3-40, height: UIScreen.screenWidth/3-50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Sành điệu").foregroundColor(ColorConstants.Grey1).bold()
                            HStack {
                                Text("599k -").font(.system(size: 14)).bold().foregroundColor(ColorConstants.Grey3)
                                Text("100 phút").font(.system(size: 14)).foregroundColor(ColorConstants.Grey3)
                            }
                        }
                        Spacer()
                        
                        VStack {
                            Image("service_3").resizable().frame(width: UIScreen.screenWidth/3-40, height: UIScreen.screenWidth/3-50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Tinh tế").foregroundColor(ColorConstants.Grey1).bold()
                            HStack {
                                Text("699k -").font(.system(size: 14)).bold().foregroundColor(ColorConstants.Grey3)
                                Text("100 phút").font(.system(size: 14)).foregroundColor(ColorConstants.Grey3)
                            }
                        }
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 20)
                    
                    HStack {
                        VStack {
                            Image("service_4").resizable().frame(width: UIScreen.screenWidth/3-40, height: UIScreen.screenWidth/3-50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Sang trọng").foregroundColor(ColorConstants.Grey1).bold()
                            HStack {
                                Text("799k -").font(.system(size: 14)).bold().foregroundColor(ColorConstants.Grey3)
                                Text("100 phút").font(.system(size: 14)).foregroundColor(ColorConstants.Grey3)
                            }
                        }.padding(.trailing, 10)
                        
                        
                        VStack {
                            Image("service_5").resizable().frame(width: UIScreen.screenWidth/3-40, height: UIScreen.screenWidth/3-50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Thư giãn").foregroundColor(ColorConstants.Grey1).bold()
                            HStack {
                                Text("590k -").font(.system(size: 14)).bold().foregroundColor(ColorConstants.Grey3)
                                Text("59 phút").font(.system(size: 14)).foregroundColor(ColorConstants.Grey3)
                            }.frame(width : 120)
                        }.padding(.leading, 10)
                    }.padding(.leading, 20).padding(.trailing, 20).padding(.bottom, 25)
                    
                    Divider().padding(.bottom, 25)
                    Image("banner_home").resizable().frame(width: UIScreen.screenWidth-40, height: UIScreen.screenWidth-40-120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Spacer()
                })
            }
        })
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
