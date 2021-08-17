//
//  Login.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 17/08/21.
//

import SwiftUI

struct Login: View {
    
    @State var name: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Text("Name")
                .foregroundColor(.gray)
                .font(.system(size: 20, weight: Font.Weight.regular))
                .padding(.bottom, -5)
            
            TextField("Name", text: $name)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}

