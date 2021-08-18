//
//  FeaturedVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 18/08/21.
//

import SwiftUI

struct FeaturedVC: View {
    var feature = "Hiren"
    var featureData: [Featured] = FeaturedList.topTen
    
    var body: some View {
        NavigationView{
            
            let columns = [
                GridItem(.flexible(), spacing: 0),
                GridItem(.flexible(), spacing: 0)
            ]
            ScrollView(.vertical) {
                LazyVGrid(columns: columns) {
                    ForEach(featureData) { index in
                        FeaturedView1(feat: index)
                    }
                }
            }
//            .navigationBarBackButtonHidden(true)
//            .toolbar {
//                ToolbarItemGroup(placement: .navigationBarLeading) {
//                    Button(action: {
//                        print("Back")
//                    }, label: {
//                        Image(systemName: "arrow.backward").imageScale(.large)
//                        foregroundColor(Color.black)
//                    })
//                }
//                ToolbarItemGroup (placement: .navigationBarTrailing) {
//                    
//                    Button(action: {
//                        print("Search")
//                    }, label: {
//                        Image(systemName: "magnifyingglass").imageScale(.large)
//                        foregroundColor(Color.black)
//                        
//                    })
//                    
//                    Button(action: {
//                        print("Notification")
//                    }, label: {
//                        Image(systemName: "bell").imageScale(.large)
//                        foregroundColor(Color.black)
//                        
//                    })
//                }
//            }
        }
    }
}

struct FeaturedView1: View {
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

struct FeaturedVC_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedVC()
    }
}
