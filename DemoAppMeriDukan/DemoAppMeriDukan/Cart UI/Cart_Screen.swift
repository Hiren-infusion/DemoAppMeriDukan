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
            
            Cart_Cell()
//            .navigationTitle("Cart")
            .navigationBarItems(trailing:
                Button(action: {
                    print("User icon pressed...")
                }) {
                    Image(systemName: "bell").imageScale(.large)
                        .foregroundColor(.black)
                })
        }
        
    }
}

struct Cart_Cell: View {
    var body: some View{
        
        NavigationView {
            
            List(0..<15) {_ in
                
            ZStack(alignment: .center) {
                
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    
                    Image("shirt")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 130)
                        .cornerRadius(4)

                    VStack {
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Men's Shirt")
                                .font(.system(size: 20, weight: Font.Weight.regular, design: .default))
                            
                            Text("Lotto.LTD")
                                .font(.system(size: 20, weight: Font.Weight.regular, design: .default))
                                .foregroundColor(.secondary)
                            
                            Text("$34.00")
                                .font(.system(size: 20, weight: Font.Weight.thin, design: .default))
                                .foregroundColor(.blue)
                                .padding(.bottom, -1)
                            
                            HStack(alignment: .center, spacing: 35) {
                                Button(action: {
                                    print("Tapped")
                                }) {
                                    Text("-")
                                        .font(.system(size: 30, weight: Font.Weight.light, design: .default))
                                        .foregroundColor(.black)
                                }
                                
                                Button(action: {
                                    print("Tapped")
                                }) {
                                    Text("1")
                                        .font(.system(size: 25, weight: Font.Weight.light, design: .default))
                                        .foregroundColor(.black)
                                }
                                
                                Button(action: {
                                    print("Tapped")
                                }) {
                                    Text("+")
                                        .font(.system(size: 30, weight: Font.Weight.light, design: .default))
                                        .foregroundColor(.black)
                                }
                            }.frame(width: 160, height: 45)
                            .background(Color(#colorLiteral(red: 0.9659907222, green: 0.9661259055, blue: 0.9659481645, alpha: 1)))
                            .cornerRadius(3)
                        }
                    }
                    
                    Button(action: {
                        print("Tapped")
                    }) {
                        Text("X")
                            .font(.system(size: 25, weight: Font.Weight.light, design: .default))
                            .foregroundColor(.gray)
                    }
                        .padding(.bottom, 125)
                    
                }
                Spacer()
            }
            .frame(width: 375, height: 170)
            .background(Color.white)
            .shadow(radius: 5)
            .onAppear {
             UITableView.appearance().separatorStyle = .none
            }
            }
            .navigationTitle("Cart")
        }
    }
}

struct Cart_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Cart_Screen()
    }
}
