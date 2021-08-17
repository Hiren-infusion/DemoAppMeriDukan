//
//  Login_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 13/08/21.
//

import SwiftUI

struct Login_Screen: View {
    
    let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
    
    let passwordPredicate = NSPredicate(format: "SELF MATCHES %@", "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$")
    
    @State private var alertIsPresented = false
    
    @State var email: String = ""
    @State var password: String = ""
    @State var passwordIconChanging: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack(alignment: .center) {
                    
                    VStack(alignment: .leading) {
                        
                        // Email Textfield
                        
                        if !email.isEmpty {
                            
                            Text("Email")
                                .foregroundColor(.gray)
                                .font(.system(size: 22, weight: Font.Weight.regular))
                                .padding(.bottom, -5)
                                
                        }
                        
                        TextField("Email", text: $email)
                            .frame(height:40)
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                        
                        if !emailPredicate.evaluate(with: email) && !email.isEmpty {
                            
                            Text("Invalid email address")
                                .font(.footnote)
                                .foregroundColor(.red)
                                .transition(AnyTransition.opacity.animation(.easeIn))
                        }
                        
                        // Password Textfield
                        
                        if !password.isEmpty {
                            
                            Text("Password")
                                .foregroundColor(.gray)
                                .font(.system(size: 22, weight: Font.Weight.regular))
                                .padding(.bottom, -5)
                                .padding(.top, 15)
                        }
                    
                        SecureField("Password", text: $password)
                            .frame(height:40)
                            .overlay(
                                
                                HStack {
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        self.passwordIconChanging.toggle()
                                    }, label: {
                                        Image(systemName: self.passwordIconChanging ? "eye" : "eye.slash")
                                            .foregroundColor(.gray)
                                            .transition(AnyTransition.opacity.animation(.easeIn))
                                    })
                                }
                                
                            )
                        
                        Rectangle()
                            .frame(height:1)
                            .foregroundColor(.gray)
                        
                        if !passwordPredicate.evaluate(with: password) && !password.isEmpty {
                            
                            Text("Password must contain, 8 Character, Uppercase, Lowercase, Number, Special Character")
                                .font(.footnote)
                                .foregroundColor(.red)
                                .transition(AnyTransition.opacity.animation(.easeIn))
                        }
                        
                    }.padding(.horizontal)
                    .padding(.bottom, 20)
                    
                    VStack {
                        Button(action: {
                            if self.emailPredicate.evaluate(with: email) && self.passwordPredicate.evaluate(with: password) {
                                
                                self.alertIsPresented = true
                            }
                            
                        }, label: {
                            Text("Login")
                                .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                                .foregroundColor(.white)
                            
                        }).frame(width: 350, height: 60)
                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                        .padding(.top, 40)
                        .transition(AnyTransition.opacity.animation(.easeIn))
                        .alert(isPresented: $alertIsPresented, content: {
                            Alert(title: Text("Done"), message: Text("You are successfully logged in"), dismissButton: .default(Text("Close")))
                        })
                        
                        HStack {
                            Text("Don't have an account ?")
                            .font(.system(size: 18, weight: Font.Weight.medium, design: .default))
                                .foregroundColor(.gray)
                                .padding(.top)
                            
                            NavigationLink(
                                destination: SignUp_Screen()) {
                                Text(" Sign Up")
                                    .font(.system(size: 19, weight: Font.Weight.light, design: .default))
                                    .foregroundColor(.black)
                                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                    .cornerRadius(10)
                                    .padding(.top)
                                    
                            }
                        }
                    }
                    
                    
                }.background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                .cornerRadius(15)
                .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: 2, y: 2)
                .padding(.horizontal, 5)
                
            }.padding(.bottom, 100)
            .navigationTitle("Login")
        }
    }
}


struct Login_Screen_Previews: PreviewProvider {
    static var previews: some View {
        Login_Screen()
    }
}
