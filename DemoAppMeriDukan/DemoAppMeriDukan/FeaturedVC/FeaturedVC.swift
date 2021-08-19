//
//  FeaturedVC.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 18/08/21.
//

import SwiftUI

struct FeaturedVC: View {
    var feature = "Featured"
    var featureData: [Featured] = FeaturedList.topTen
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        let columns = [
            GridItem(.flexible(), spacing: 0),
            GridItem(.flexible(), spacing: 0)
        ]
        NavigationView {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns) {
                        ForEach(featureData) { index in
                            FeaturedView1(feat: index)
                        }
                    }
                }
            .navigationBarTitle(Text(feature))
               // .navigationBarHidden(true)
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
