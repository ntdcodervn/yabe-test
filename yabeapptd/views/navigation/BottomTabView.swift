//
//  BottomTabView.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/12/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct BottomTabView: View {
    
    @Binding var index : Int
    func reloadCache() {
        SDImageCache.shared.clearMemory()
        SDImageCache.shared.clearDisk(onCompletion: nil)
    }
    var body: some View {
       
        Divider().cornerRadius(100).shadow(color: .red, radius: 5, x: 20, y: 20).padding(.bottom, 0)

        HStack(content: {
            Button(action: {
                self.index = 0
                reloadCache();
            }, label: {
                index != 0 ? Image("home_icon") : Image("home_icon_active")
            }).padding(.leading , 27).padding(.bottom,5*UIScreen.screenHeightResize)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                self.index = 1
                reloadCache();

            }, label: {
                index != 1 ? Image("gallery_icon") : Image("gallery_icon_active")
            }).padding(.bottom,5)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            NavigationLink(
                destination: BookScreen(),
                label: {
                    HStack( content: {
                        Image("plus_icon").padding(.all,18)
                    }).background(Image("bg_button-1")).offset(y : -35)
                }).padding(.bottom,5*UIScreen.screenHeightResize)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            
            Button(action: {
                self.index = 3
                reloadCache();

            }, label: {
                index != 3 ? Image("notification_icon") : Image("notification_icon_active")
            }).padding(.bottom,5*UIScreen.screenHeightResize)
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            
            Button(action: {
                self.index = 4
                reloadCache();

            }, label: {
                index != 4 ? Image("user_icon_tab") : Image("user_icon_active")
            }).padding(.trailing , 27).padding(.bottom,5*UIScreen.screenHeightResize)
        }).background(Color.white).frame(width: UIScreen.screenWidth, height: 65*UIScreen.screenHeightResize)

        
    }
}

struct MainTabView: View {
    
    @State var index:Int = 0
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Spacer()
                ZStack() {
                    if self.index == 0 {
                        HomeScreen()
                    } else if self.index == 1 {
                        GalleryScreen()

                    } else if self.index == 3 {
                        NotificationScreen()

                    } else if self.index == 4 {
                        ProfileScreen()
                    } else {
                        HomeScreen()
                    }
                }.frame(width: UIScreen.screenWidth, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                BottomTabView(index: self.$index)

            }
            ServiceBottomSheet()

        }.frame(width: UIScreen.screenWidth,  height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)


    }
}

struct BottomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
