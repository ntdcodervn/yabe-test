//
//  LoginWithPhone.swift
//  yabeapptd
//
//  Created by Nguyen Thanh Duy on 4/10/21.
//

import SwiftUI

struct LoginWithPhone: View {
  
    
    var body: some View {
            ZStack( content: {
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("LoginWithPhone")
                    NavigationLink(destination: Login()) { /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/ }

                })
            })
    }
}

struct LoginWithPhone_Previews: PreviewProvider {
    static var previews: some View {
        LoginWithPhone()
    }
}
