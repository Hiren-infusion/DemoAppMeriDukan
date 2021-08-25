//
//  CheckoutVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 25/08/21.
//

import SwiftUI
import NavigationStack

struct CheckoutVC: View {
    var featureData: [Featured] = FeaturedList.topTen
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(featureData) { index in
                        topCell(feat: index)
                    }
                        addressCell()
                        Spacer(minLength: 20)
                        TotalCell()
                        Spacer(minLength: 20)
                        bottomButtonCell()
                    
                }.listStyle(PlainListStyle())
                .onAppear {
                UITableView.appearance().separatorStyle = .none
            }
            }
            .navigationBarTitle(Text("Checkout"))
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

struct topCell: View {
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
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 2)
                            .foregroundColor(.gray)
                            .frame(height: 50)
                        
               
                        
                        HStack {
                            Button(action: {
                                print("close")
                            }, label: {
                                Text("-")
                                    .foregroundColor(.black)
                                    .font(.system(size: 40, weight: Font.Weight.light, design: .default))
                        }).padding()
                            
                            Spacer()
                            Text("1")
                                .foregroundColor(.black)
                                .font(.system(size: 30, weight: Font.Weight.light, design: .default))
                                .padding()
                            
                            Spacer()
                            Button(action: {
                                print("Plush")
                            }, label: {
                                Text("+")
                                    .foregroundColor(.black)
                                    .font(.system(size: 40, weight: Font.Weight.light, design: .default))
                        }).padding()
                        }
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


struct addressCell: View {
    var body: some View {
        Spacer(minLength: 0)
        VStack(alignment: .leading) {
            Text("Sample address comes here")
                .font(.title3)
            Spacer()
            Text("Address1Address1Address1Address1")
                .font(.title3)
        }
    }
}
struct bottomButtonCell: View {
    var body: some View {
        Spacer(minLength: 40)
        
            Button(action: {
                print("Buy")
            }, label: {
                Text("Buy")
                    .bold()
                    .font(.title3)
                
            })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 55, maxHeight: .infinity)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(5.0)
    }
}
struct CheckoutVC_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutVC()
    }
}
