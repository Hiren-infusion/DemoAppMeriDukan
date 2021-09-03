//
//  Profile_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 26/08/21.
//

import SwiftUI

struct Profile_Screen: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Name_AddressLane()
                    City_Gender()
                    Email_Phone()
                }.padding(.horizontal)
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarItems(leading:
                                    
                                    Image(systemName: "arrow.backward").imageScale(.large)
                                    .foregroundColor(Color.black)
                                
                                , trailing:
                                    
                                    HStack {
                                        Button(action: {
                                            print("Tapped")
                                        }, label: {
                                            Image(systemName: "bell").imageScale(.large)
                                                .foregroundColor(Color.black)
                                        })
                                    })
        }
    }
}


struct Name_AddressLane: View {
    
    @State var name: String = ""
    @State var address: String = ""
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            if !name.isEmpty {
                
                Text("Name")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                    .padding(.top)
                
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
                    .padding(.top)
                
            }
            
            TextField("Address lane", text: $address)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
        }
    }
}


struct City_Gender: View {
    
    @State var city: String = ""
    @State var postalCode: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if !city.isEmpty {
                
                Text("City")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                    .padding(.top)
                
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
                    .padding(.top)
                
            }
            
            TextField("Postal Code", text: $postalCode)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
        }
    }
}


struct Email_Phone: View {
    
    @State var email: String = ""
    @State var phoneNumber: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            if !email.isEmpty {
                
                Text("Email")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                    .padding(.top)
                
            }
            
            TextField("Phone Number", text: $email)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            
            
            if !phoneNumber.isEmpty {
                
                Text("Phone Number")
                    .foregroundColor(.gray)
                    .font(.system(size: 20, weight: Font.Weight.regular))
                    .padding(.bottom, -5)
                    .padding(.top)
                
            }
            
            TextField("Phone Number", text: $phoneNumber)
                .frame(height:40)
            
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
        }
    }
}


struct Profile_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Profile_Screen()
    }
}
