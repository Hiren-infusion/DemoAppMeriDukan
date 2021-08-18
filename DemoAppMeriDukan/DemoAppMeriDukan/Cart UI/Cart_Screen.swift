//
//  Cart_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 18/08/21.
//

import SwiftUI

struct Cart_Screen: View {
    var body: some View {
        NavigationView {
            
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                
                Image("shirt")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                    .cornerRadius(5)
                
                VStack {
                    
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Men's Shirt")
                            .font(.system(size: 25, weight: Font.Weight.regular, design: .default))
                        
                        Text("Lotto.LTD")
                            .font(.system(size: 25, weight: Font.Weight.regular, design: .default))
                            .foregroundColor(.secondary)
                        
                        Text("$34.00")
                            .font(.system(size: 25, weight: Font.Weight.thin, design: .default))
                            .foregroundColor(.blue)
                            .padding(.bottom, -1)
                        
                        HStack(alignment: .center, spacing: 35) {
                            Button(action: {
                                
                            }) {
                                Text("-")
                                    .font(.system(size: 30, weight: Font.Weight.bold, design: .default))
                                    .foregroundColor(.black)
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("1")
                                    .font(.system(size: 30, weight: Font.Weight.regular, design: .default))
                                    .foregroundColor(.black)
                            }
                            
                            Button(action: {
                                
                            }) {
                                Text("+")
                                    .font(.system(size: 30, weight: Font.Weight.bold, design: .default))
                                    .foregroundColor(.black)
                            }
                        }.frame(width: 160, height: 50)
                        .background(Color(#colorLiteral(red: 0.9659907222, green: 0.9661259055, blue: 0.9659481645, alpha: 1)))
                        .cornerRadius(5)
                    }
                }
            }
            .navigationTitle("Cart")
            .navigationBarItems(trailing:
                Button(action: {
                    print("User icon pressed...")
                }) {
                    Image(systemName: "bell").imageScale(.large)
                        .foregroundColor(.black)
                }
            )
        }
    }
}

struct Cart_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Cart_Screen()
    }
}
