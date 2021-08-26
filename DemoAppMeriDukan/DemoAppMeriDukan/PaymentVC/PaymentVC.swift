//
//  PaymentVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 24/08/21.
//

import SwiftUI
import NavigationStack

struct PaymentVC: View {
    var body: some View {
        NavigationStackView{
        NavigationView {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading) {
                    ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack(alignment: .center, spacing: 20, content: {
                                Image("card")
                                    .resizable()
                                Image("card")
                                    .resizable()
                                Image("card")
                                    .resizable()
                            })
                        
                    }).frame(width: 400, height: 150)
                    Spacer(minLength: 100)
                    TotalCell()
                    buttonCell()
                    
                    
                }.padding()
                
            })
            .navigationBarTitle(Text("Payment"))
            .navigationBarItems(leading:
                                    
                                    PopView {
                                        Image(systemName: "arrow.backward").imageScale(.large)
                                            .foregroundColor(Color.black)
                                    }
                                , trailing:
                                    
                                    HStack {
                                        Button(action: {
                                            print("hk")
                                        }, label: {
                                            Image(systemName: "bell").imageScale(.large)
                                                .foregroundColor(Color.black)
                                        })
                                    })
        }
        }
    }
}
struct TotalCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Subtotal")
                    .foregroundColor(.gray)
                Spacer()
                Text("$160")
            }
            Spacer(minLength: 20)
            HStack {
                Text("Discount")
                    .foregroundColor(.gray)
                Spacer()
                Text("5%")
            }
            Spacer(minLength: 20)
            HStack {
                Text("Shipping")
                    .foregroundColor(.gray)
                Spacer()
                Text("$10.0")
            }
            Spacer(minLength: 20)
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
            
            Spacer(minLength: 20)
            HStack {
                Text("Total")
                    .foregroundColor(.gray)
                Spacer()
                Text("$162.0")
            }
        }
    }
}

struct buttonCell: View {
    @State private var isActive = false
    var body: some View {
        Spacer(minLength: 70)
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                        .foregroundColor(Color(UIColor.blue))
                .frame(height: 55)
            
            VStack {
                Button(action: {
                    print("Add Card")
                }, label: {
                    Text("Add Card")
                        .bold()
                        .font(.title3)
                    
                })
            }
        }
        
        Spacer(minLength: 30)
        
        VStack {
            PushView(destination: CheckoutVC(), isActive: $isActive) {
                Button(action: {
                    self.isActive.toggle()
                }, label: {
                    Text("Checkout")
                        .bold()
                        .font(.title3)
                    
                })
            }
          
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 55, maxHeight: .infinity)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(5.0)
    }
}
struct PaymentVC_Previews: PreviewProvider {
    static var previews: some View {
        PaymentVC()
    }
}
