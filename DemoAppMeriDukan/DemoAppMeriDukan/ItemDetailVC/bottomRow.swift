//
//  bottomRow.swift
//  DemoAppMeriDukan
//
//  Created by IOSDEV1 on 19/08/21.
//

import SwiftUI

struct bottomRow: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gray)
        }
    }
}

struct bottomRow_Previews: PreviewProvider {
    static var previews: some View {
        bottomRow()
    }
}
