//
//  GalleryScreen.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/12/21.
//

import SwiftUI

struct GalleryScreen: View {
    
    @State var ListService = ["Thanh lịch","Sành điệu","Tinh tế","Sang trọng","Thư giãn"]
    
    @State var selected = "Thanh lịch"
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in

            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Thư viện mẫu").bold().font(.system(size: 18)).padding(.top,geometry.safeAreaInsets.top+20)
                    
                }
                ScrollView(.horizontal, showsIndicators : false) {
                    HStack {
                        ForEach(ListService, id: \.self){ service in
                            Button(action: {
                                self.selected = service
                            }, label: {
                                Text(service).font(.system(size: 12)).padding(.vertical, 5).padding(.horizontal, 15).foregroundColor(selected == service ? Color.white : ColorConstants.Grey1)
                            }).background(selected == service ? ColorConstants.PrimaryD : ColorConstants.Grey6).cornerRadius(50, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/).padding(.leading, 10)
                        }
                    }.padding(.leading, 10).padding(.trailing, 20)
                }
                
            }.frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct GalleryScreen_Previews: PreviewProvider {
    static var previews: some View {
        GalleryScreen()
    }
}
