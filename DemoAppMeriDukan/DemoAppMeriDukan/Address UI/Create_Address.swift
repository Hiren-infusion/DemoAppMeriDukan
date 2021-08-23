//
//  Create_Address.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 20/08/21.
//

import SwiftUI

struct Create_Address: View {
    
    var body: some View {
        
        NavigationView {
            ScrollView {
//                ZStack(alignment: .center) {
                    VStack {
                        Name_Address()
                        City_PostalCode()
                        Phone_Number()
                    }.padding(.horizontal)
//                }
            }
        }.navigationTitle("Create Address")
    }
}


struct Name_Address: View {
    
    @State var name: String = ""
    @State var address: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if !name.isEmpty {
                 
                Text("Name")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                
            }
            
            TextField("Name", text: $name)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
            if !address.isEmpty {
                
                Text("Address lane")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                
            }
            
            TextField("Address lane", text: $address)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
        }
    }
}


struct City_PostalCode: View {
    
    @State var city: String = ""
    @State var postalCode: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if !city.isEmpty {
                
                Text("City")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                
            }
            
            TextField("City", text: $city)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
            if !postalCode.isEmpty {
                
                Text("Postal Code")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                
            }
            
            TextField("Postal Code", text: $postalCode)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
        }
    }
}


struct Phone_Number: View {
    
    @State var phoneNumber: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if !phoneNumber.isEmpty {
                
                Text("Phone Number")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                
            }
            
            TextField("Phone Number", text: $phoneNumber)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
        }
    }
}


struct Create_Address_Previews: PreviewProvider {
    static var previews: some View {
        Create_Address()
    }
}
