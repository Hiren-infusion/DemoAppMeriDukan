//
//  Create_Address.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 20/08/21.
//

import SwiftUI

struct Create_Address: View {
    
    @State private var alertIsPresented = false
    
    @State var data = Name_Address.self
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                    VStack {
                        Name_Address()
                        City_PostalCode()
                        Phone_Number()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Add Address")
                                .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                                .foregroundColor(.white)
                        }).frame(width: 360, height: 70)
                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                        .padding(.top, 100)
                        .alert(isPresented: $alertIsPresented, content: {
                            Alert(title: Text("Done"), message: Text("You are successfully logged in"), dismissButton: .default(Text("Close")))
                        })
                        
                    }.padding(.horizontal)
                    .padding(.top)
            }.navigationTitle("Create Address")
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
                    .padding(.top)
                
            }
            
            TextField("Name", text: $name)
                .frame(height:40)
             
            Rectangle()
                .frame(height:1)
                .foregroundColor(.gray)
            if name.isEmpty {
                Text("Please enter name!")
                    .font(.footnote)
                    .foregroundColor(.red)
                    .transition(AnyTransition.opacity.animation(.easeIn))
            }
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


struct Phone_Number: View {
    
    @State var phoneNumber: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
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


struct Create_Address_Previews: PreviewProvider {
    static var previews: some View {
        Create_Address()
    }
}
