//
//  FavoriteVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 26/08/21.
//

import SwiftUI
import NavigationStack

struct FavoriteVC: View {
    var favority = "Favority"
    var featureData: [Featured] = FeaturedList.topTen
    
    var body: some View {
        
        let columns = [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0)
        ]
        NavigationView {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns) {
                        ForEach(featureData) { index in
                            Favority(feat: index)
                        }
                    }
                }
            .navigationBarTitle(Text(favority))
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

struct Favority: View {
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
struct FavoriteVC_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteVC()
    }
}
