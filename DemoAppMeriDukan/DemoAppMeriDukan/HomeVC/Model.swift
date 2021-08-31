//
//  Model.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 16/08/21.
//

import Foundation
import SwiftUI

struct Categories: Identifiable {
    var id = UUID()
    let image:String
    let title:String
    let color:String
    
}

struct CategoriesList {
    
    static let topTen = [
        Categories(image: "MyImage", title: "Man ", color: "Color"),
        Categories(image: "Image", title:  "Women", color:  "Color"),
        Categories(image: "Image-3", title: "Man ", color: "Color"),
        Categories(image: "Image-2", title: "Woman", color: "Color"),
        Categories(image: "Image-1", title: "Kid", color: "Color"),
        Categories(image: "Image-4", title: "Kid ", color: "Color"),
    ]
}


struct Featured: Identifiable {
    var id = UUID()
    let image:String
    let title:String
    let rate: String
    
}

struct FeaturedList {
    
    static let topTen = [
        Featured(image: "Image", title: "Woman T-Shirt", rate: "$55.00"),
        Featured(image: "MyImage", title: "Men TiShirt", rate: "$55.00"),
        Featured(image: "Image-3", title: "Men Shirt", rate: "$55.00"),
        Featured(image: "Image-2", title: "Woman Shirt", rate: "$55.00"),
        Featured(image: "Image-1", title: "Kids ware", rate: "$55.00"),
        Featured(image: "Image-4", title: "Baby ware", rate: "$55.00"),
    ]
}


//struct BestCell: Identifiable {
//    var id = UUID()
//    let image:String
//    let title:String
//
//}
//
//struct BestCellList {
//
//    static let topTen = [
//        BestCell(image: "images", title: "First video"),
//        BestCell(image: "images-1", title: "Second video"),
//        BestCell(image: "images-2", title: "Third video"),
//    ]
//}
