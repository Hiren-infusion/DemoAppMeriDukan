//
//  Confirmation_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 26/08/21.
//

import SwiftUI

struct Confirmation_Screen: View {
    var body: some View {
        VStack(spacing: 5) {
            Image("abc")
                .aspectRatio(contentMode: .fill)
                .padding(.top, 100)
            
            Text("Confirmation")
                .font(.system(size: 40, weight: Font.Weight.light, design: .default))
                .padding()
            
            Text("You have successfully")
                .font(.system(size: 20, weight: Font.Weight.light, design: .default))
                
            Text("completed your payment procedure")
                .font(.system(size: 20, weight: Font.Weight.light, design: .default))
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("Back to Home")
                    .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                    .foregroundColor(.white)
            }).frame(width: 360, height: 70)
            .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
            .cornerRadius(10)
            .padding(.bottom)
        }
    }
}

struct Confirmation_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Confirmation_Screen()
    }
}
