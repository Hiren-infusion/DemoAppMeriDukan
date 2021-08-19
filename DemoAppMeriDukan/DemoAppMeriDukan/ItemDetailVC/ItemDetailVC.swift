//
//  ItemDetailVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 19/08/21.
//

import SwiftUI

struct ItemDetailVC: View {
    
    @State var currentPage = 0
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var featureData: [Featured] = FeaturedList.topTen
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ZStack(alignment: .bottom) {
                        Image("MyImage")
                            .resizable()
                            .frame(width: 400, height: 250)
                            
                        pageController(current: currentPage)
                    }
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
                    
                }.padding()
            }
            .navigationBarItems(leading:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "arrow.backward").imageScale(.large)
                                            .foregroundColor(Color.black)
                                    })
                                
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
