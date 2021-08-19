//
//  PageViewController.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 19/08/21.
//

import Foundation
import SwiftUI

struct pageController: UIViewRepresentable {
    
    var current = 0
    
    func makeUIView(context: UIViewRepresentableContext<pageController>) -> UIPageControl {
        let page = UIPageControl()
        page.currentPageIndicatorTintColor = .black
        page.numberOfPages = 3
        page.pageIndicatorTintColor = .red
        return page
    }
    
    func updateUIView(_ uiView: UIPageControl, context: UIViewRepresentableContext<pageController>) {
        uiView.currentPage = current
        
    }
}
