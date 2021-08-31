//
//  ItemDetailVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 19/08/21.
//

import SwiftUI
import NavigationStack

struct ItemDetailVC: View {
    
    @State var currentPage = 0
    var featureData: [Featured] = FeaturedList.topTen
    var body: some View {
        
            NavigationView {
                ScrollView {
                    VStack(alignment: .leading) {
                        ZStack(alignment: .bottomLeading) {
                            Image("MyImage")
                                .resizable()
                                .frame(width: 400, height: 250)
                            
                            pageController(current: currentPage)
                        }
                        topNameView()
                        reviewView()
                        descriptionView()
                        sizeView()
                        bottomButton()
                    }.padding()
                }
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
                                                Image(systemName: "magnifyingglass").imageScale(.large)
                                                    .foregroundColor(Color.black)
                                            })
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
struct topNameView: View {
    var body: some View {
        Text("Black turtleneck top")
            .font(.title)
        Spacer()
        HStack {
            Text("$42")
                .font(.title)
                .foregroundColor(Color.blue)
            ZStack{
                Text("$62")
                    .font(.title3)
                Rectangle()
                    .frame(width: 40, height: 1)
            }
        }
        
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
    }
}

struct reviewView: View {
    var body: some View {
        HStack {
            Text("4.5")
                .font(.title2)
                .bold()
                .cornerRadius(50)
                .frame(width: 80, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.blue)
            Text("Very Good")
                .font(.title2)
            Spacer()
            Text("45 Reviews")
                .foregroundColor(.blue)
        }
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
    }
}

struct descriptionView: View {
    var body: some View {
        Text("Description")
            .font(.title2)
        Spacer()
        HStack(alignment: .bottom) {
            Text("A wonderful serenity has taken possession of my entire soul, like this sweet morning of spring which i enjoy with my whole heart.")
                .fixedSize(horizontal: false, vertical: true)
                .font(.title3)
                .foregroundColor(.gray)
            Spacer()
            Text("More..")
                .font(.title3)
                .foregroundColor(.blue)
        }
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
    }
}

struct sizeView: View {
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Text("Select Size")
                .font(.title2)
                .bold()
            Text("Select Color")
                .font(.title2)
            Spacer()
        }
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray)
        HStack {
            Spacer()
            Button(action: {
                print("Small")
            }, label: {
                Text("S")
                    .font(.title)
            }) .frame(width: 70, height: 50)
            .background(Color.gray)
            .foregroundColor(.black)
            .cornerRadius(5.0)
            
            Spacer()
            
            Button(action: {
                print("Medium")
            }, label: {
                Text("M")
                    .font(.title)
            }) .frame(width: 70, height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(5.0)
            
            Spacer()
            
            Button(action: {
                print("Large")
            }, label: {
                Text("L")
                    .font(.title)
            }) .frame(width: 70, height: 50)
            .background(Color.gray)
            .foregroundColor(.black)
            .cornerRadius(5.0)
            
            Spacer()
            
            Button(action: {
                print("XLarge")
            }, label: {
                Text("XXL")
                    .font(.title)
            }) .frame(width: 70, height: 50)
            .background(Color.gray)
            .foregroundColor(.black)
            .cornerRadius(5.0)
            
            Spacer()
        }
        
    }
}

struct bottomButton: View {
    var body: some View {
        Spacer(minLength: 40)
        HStack(spacing: 0) {

                    VStack {
                        Button(action: {}, label: {
                            Text("ADD TO CART")
                                .bold()
                        })
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 60, maxHeight: .infinity)
                        .foregroundColor(.black)
                        .background(Color.gray)

                    VStack {
                        Button(action: {}, label: {
                            Text("BUY NOW")
                                .bold()
                            
                        })
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 50, maxHeight: .infinity)
                        .foregroundColor(.white)
                        .background(Color.blue)

        } .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, idealHeight: 60, maxHeight: .infinity)
                   
                    
    }
}
struct paginationImage: View {
    var feat : Featured
    var body: some View {
        VStack(alignment: .leading){
            
            ZStack {
                Image(feat.image)
                    .resizable()
                    .cornerRadius(10)
                pageController()
                    .padding()
            }
        }.frame(width: 150, height: 230)
    }
}

struct ItemDetailVC_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailVC()
    }
}
