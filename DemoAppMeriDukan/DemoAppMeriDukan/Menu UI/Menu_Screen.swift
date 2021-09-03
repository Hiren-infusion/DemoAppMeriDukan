//
//  Menu_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 27/08/21.
//

import SwiftUI

struct Menu_Screen: View {
    var body: some View {
        
        ScrollView {
            VStack {
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Home")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding(.top, 150)
                
                
                Button(action: {
                    
                }, label: {
                    Text("Profile")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Button(action: {
                    
                }, label: {
                    Text("My Cart")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Favorite")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Button(action: {
                    
                }, label: {
                    Text("My Orders")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Language")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Button(action: {
                    
                }, label: {
                    Text("Settings")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .foregroundColor(.gray)
                }).padding()
                
                Spacer()
            }
        }
        
    }
}

struct Menu_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Menu_Screen()
    }
}
