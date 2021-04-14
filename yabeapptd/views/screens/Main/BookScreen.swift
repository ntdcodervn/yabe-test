//
//  BookScreen.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/12/21.
//

import SwiftUI

struct BookScreen: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    func goBack() {
        self.presentationMode.wrappedValue.dismiss()
    }
    
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        HStack {
                            Button(action: {
                                goBack()
                            }, label: {
                                Image(systemName: "arrow.backward").foregroundColor(ColorConstants.PrimaryD).font(.system(size: 24))
                            })
                            Spacer()
                            
                            Text("Các gói dịch vụ").bold().font(.system(size: 18)).padding(.trailing, 20)
                            Spacer()

                        }.padding(.horizontal,20)
                        
                        ScrollView(showsIndicators: false) {
                            HStack(alignment : .top) {
                                Image("location_icon").resizable().frame(width: 20, height: 23, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                VStack(alignment : .leading) {
                                    Text("Địa chỉ").bold().font(.system(size: 16))
                                    Text("Nhập địa chỉ").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)

                                }
                                Spacer()
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "xmark").font(.system(size: 20)).foregroundColor(ColorConstants.Grey3)
                                })
                            }.padding(.horizontal,20).padding(.top, 20)
                            Divider().padding(.horizontal, 20).padding(.bottom,20)
                            
                            HStack {
                                Image("service_1").resizable().frame(width: UIScreen.screenWidth/3-10, height: UIScreen.screenWidth/3-20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                VStack(alignment: .leading){
                                    Text("Thanh lịch").bold().font(.system(size: 24)).padding(.bottom,1)
                                    Text("399.000đ").bold().font(.system(size: 18)).foregroundColor(ColorConstants.PrimaryD)
                                    Text("47 phút").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)
                                }.padding(.leading,10)
                                Spacer()
                            }
                            
                            HStack {
                                Image("service_2").resizable().frame(width: UIScreen.screenWidth/3-10, height: UIScreen.screenWidth/3-20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                VStack(alignment: .leading){
                                    Text("Thanh lịch").bold().font(.system(size: 24)).padding(.bottom,1)
                                    Text("599.000đ").bold().font(.system(size: 18)).foregroundColor(ColorConstants.PrimaryD)
                                    Text("100 phút").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)
                                }.padding(.leading,10)
                                Spacer()
                            }.padding(.top, 20)
                            
                            HStack {
                                Image("service_3").resizable().frame(width: UIScreen.screenWidth/3-10, height: UIScreen.screenWidth/3-20, alignment: .center
                                )
                                VStack(alignment: .leading){
                                    Text("Thanh lịch").bold().font(.system(size: 24)).padding(.bottom,1)
                                    Text("699.000đ").bold().font(.system(size: 18)).foregroundColor(ColorConstants.PrimaryD)
                                    Text("100 phút").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)
                                }.padding(.leading,10)
                                Spacer()
                            }.padding(.top, 20)
                        }
                        
                        HStack {
                            Image("service_4").resizable().frame(width: UIScreen.screenWidth/3-10, height: UIScreen.screenWidth/3-20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading){
                                Text("Thanh lịch").bold().font(.system(size: 24)).padding(.bottom,1)
                                Text("799.000đ").bold().font(.system(size: 18)).foregroundColor(ColorConstants.PrimaryD)
                                Text("100 phút").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)
                            }.padding(.leading,10)
                            Spacer()
                        }.padding(.top, 20)
                        
                    }
                    
                    HStack {
                        Image("service_5").resizable().frame(width: UIScreen.screenWidth/3-10, height: UIScreen.screenWidth/3-20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        VStack(alignment: .leading){
                            Text("Thư giãn").bold().font(.system(size: 24)).padding(.bottom,1)
                            Text("590.000đ").bold().font(.system(size: 18)).foregroundColor(ColorConstants.PrimaryD)
                            Text("59 phút").font(.system(size: 12)).foregroundColor(ColorConstants.Grey3)
                        }.padding(.leading,10)
                        Spacer()
                    }.padding(.top, 20)
                    
                    
                    
                }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).navigationBarTitle("Hidden Title")
                .navigationBarHidden(true)
               
            }
        }
        
    }
}

struct BookScreen_Previews: PreviewProvider {
    static var previews: some View {
        BookScreen()
    }
}
