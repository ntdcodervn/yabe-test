//
//  Layout1.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/15/21.
//

import SwiftUI
import SDWebImageSwiftUI



struct Layout1: View {
    @State var width = UIScreen.screenWidth
    @State var height = UIScreen.screenHeight
    
    var services: [ServicesModel]
    
    var body: some View {
        VStack(spacing : 4) {
            HStack(spacing : 4) {
                AnimatedImage(url: URL(string: services[0].download_url)).resizable()                            .placeholder(UIImage(systemName: "placeholder")).frame(width: (width/3), height: (width/3), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                if services.count >= 2 {
                    AnimatedImage(url: URL(string: services[1].download_url)).resizable().placeholder(UIImage(systemName: "placeholder")).frame(width: width/3, height: width/3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
                if services.count >= 3 {
                    AnimatedImage(url: URL(string: services[2].download_url)).resizable().placeholder(UIImage(systemName: "placeholder")).frame(width: width/3, height: width/3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
    }
}

struct Layout1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
