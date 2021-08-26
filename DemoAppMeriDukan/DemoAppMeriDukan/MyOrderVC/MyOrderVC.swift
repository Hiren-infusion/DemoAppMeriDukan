//
//  MyOrderVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 26/08/21.
//

import SwiftUI
import NavigationStack

struct MyOrderVC: View {
    var featureData: [Featured] = FeaturedList.topTen
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(featureData) { index in
                        topCell1(feat: index)
                    }
                    
                }.listStyle(PlainListStyle())
                .onAppear {
                UITableView.appearance().separatorStyle = .none
            }
            }
            .navigationBarTitle(Text("My Orders"))
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
struct topCell1: View {
    var feat : Featured
    var body: some View{
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 5)
                .foregroundColor(.white)
                .frame(height: 200)
                .shadow(color: .gray, radius: 5, x: 0, y: 10)
            
            HStack(alignment: .center, spacing: 5) {
                Image("MyImage")
                    .resizable()
                    .frame(width: 130, height: 160, alignment: .center)
                    .padding()
                
                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(feat.title)
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    Text("Lotto.LTD")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Text("$34.00")
                        .font(.title3)
                        .foregroundColor(.blue)
                    
                    ZStack() {
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(.blue)
                            .frame(height: 50)
                        Text("Order Again")
                            .font(.title3)
                            .foregroundColor(.white)
                            .bold()
                        
                    }
                }
                Spacer()
                
                Button(action: {
                    print("close")
                }, label: {
                    Image(systemName: "multiply").imageScale(.large)
                        .foregroundColor(Color.black)
                }).padding(.bottom, 150)
                Spacer(minLength: 0)
            }
        }
    }
}


struct MyOrderVC_Previews: PreviewProvider {
    static var previews: some View {
        MyOrderVC()
    }
}
