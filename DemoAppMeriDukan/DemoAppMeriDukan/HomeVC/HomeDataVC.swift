//
//  HomwDataVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 13/08/21.
//

import SwiftUI

struct HomeDataVC: View {
    
    var categ: [Categories] = CategoriesList.topTen
    var featureData: [Featured] = FeaturedList.topTen
    @State var searchText = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                        .padding(6)
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Search ..", text: $searchText)
                    }
                    .foregroundColor(.gray)
                    .padding(.leading, 13)
                }
                .frame(height: 50)
                .cornerRadius(20)
                .padding()
                
                ZStack {
                    List  {
                        HStack {
                            Text("Categories")
                                .font(.title)
                            Spacer()
                            Button("See all") {
                                print("all")
                            }.foregroundColor(.gray)
                        }.frame(height: 10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            VStack(alignment: .leading) {
                                HStack{
                                    ForEach(categ) { index in
                                        CategoriesView(cate: index)
                                    }
                                }
                            }
                        })
                        .frame(height: 80)
                        
                        
                        HStack {
                            Text("Featured")
                                .font(.title)
                            Spacer()
                            Button("See all") {
                                print("all")
                            }.foregroundColor(.gray)
                        }.frame(height: 10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            VStack(alignment: .leading) {
                                HStack{
                                    ForEach(featureData) { index in
                                        FeaturedView(feat: index)
                                    }
                                    
                                }
                            }
                        })
                        .frame(height: 240)
                        
                        
                        HStack {
                            Text("Best Sell")
                                .font(.title)
                            Spacer()
                            Button("See all") {
                                print("all")
                            }.foregroundColor(.gray)
                        }.frame(height: 10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            VStack(alignment: .leading) {
                                HStack{
                                    ForEach(featureData) { index in
                                        FeaturedView(feat: index)
                                    }
                                }
                            }
                        })
                        .frame(height: 240)
                        
                    }
                   // .navigationBarTitle(Text("Home"))
                    .navigationBarItems(leading:
                                            Button(action: {
                                                print("Menu")
                                            }, label: {
                                                Image(systemName: "text.alignleft").imageScale(.large)
                                                    .foregroundColor(.black)
                                            }),
                                        trailing:
                                            
                                            HStack {
                                                Button(action: {
                                                    print("Notification")
                                                }, label: {
                                                    Image(systemName: "bell").imageScale(.large)
                                                        .foregroundColor(.black)
                                                })
                                                
                                                Button(action: {
                                                    print("Filter")
                                                }, label: {
                                                    Image(systemName: "person.crop.circle").imageScale(.large)
                                                        .foregroundColor(.black)
                                                })
                                            }
                    )
                }
                Spacer()
            }
            
            
        }
        
    }
}
struct CategoriesView: View {
    var cate : Categories
    var body: some View {
        
        VStack {
            Image(cate.image)
                .resizable()
                .cornerRadius(10)
                .overlay(labelOverlay(cate: cate), alignment: .center)
            Spacer()
            Divider()
            
        }.frame(width: 150, height: 70)
    }
}


struct labelOverlay: View {
    var cate : Categories
    var body: some View {
        ZStack{
            Text(cate.title)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }.background(Color.red)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .opacity(0.7)
        .padding(10)
    }
}

struct FeaturedView: View {
    var feat : Featured
    var body: some View {
        VStack(alignment: .leading){
            Image(feat.image)
                .resizable()
                .cornerRadius(10)
            Text(feat.rate)
                .lineLimit(nil)
                .padding(.leading, 0)
            Spacer()
            Text(feat.title)
                .lineLimit(nil)
                .padding(.leading, 0)
        }.frame(width: 150, height: 230)
    }
}

struct HomwDataVC_Previews: PreviewProvider {
    static var previews: some View {
        HomeDataVC()
    }
}
