//
//  SignUp_Screen.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 17/08/21.
//

import SwiftUI
import NavigationStack

struct SignUp_Screen: View {
    
    let emailPredicatedata = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
    
    let passwordPredicatedata = NSPredicate(format: "SELF MATCHES %@", "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{8,}$")
    
    @State private var alertIsPresented = false
    
    @State var emaill: String = ""
    @State var passwordd: String = ""
    @State var name: String = ""
    @State var passwordIconChangingg: Bool = false
    
    var body: some View {
        
        NavigationStackView {
            
            NavigationView {
                
                ZStack {
                    
                    VStack(alignment: .center) {
                        
                        VStack(alignment: .leading) {
                            
                            Login()
                                .padding(.bottom, 10)
                            
                            if !emaill.isEmpty {
                                Text("Email")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 20, weight: Font.Weight.regular))
                                    .padding(.bottom, -5)
                            }
                            
                            TextField("Email", text: $emaill)
                                .frame(height:40)
                            
                            Rectangle()
                                .frame(height:1)
                                .foregroundColor(.gray)
                            
                            if !emailPredicatedata.evaluate(with: emaill) && !emaill.isEmpty {
                                
                                Text("Invalid email address")
                                    .font(.footnote)
                                    .foregroundColor(.red)
                                    .transition(AnyTransition.opacity.animation(.easeIn))
                            }
                            
                            // Password Textfield
                            
                            if !passwordd.isEmpty {
                                
                                Text("Password")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 22, weight: Font.Weight.regular))
                                    .padding(.bottom, -5)
                                    .padding(.top, 15)
                                
                            }
                            
                            SecureField("Password", text: $passwordd)
                                .frame(height:40)
                                .overlay(
                                    
                                    HStack {
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            self.passwordIconChangingg.toggle()
                                        }, label: {
                                            Image(systemName: self.passwordIconChangingg ? "eye" : "eye.slash")
                                                .foregroundColor(.gray)
                                                .transition(AnyTransition.opacity.animation(.easeIn))
                                        })
                                    }
                                    
                                )
                            
                            Rectangle()
                                .frame(height:1)
                                .foregroundColor(.gray)
                            
                            if !passwordPredicatedata.evaluate(with: passwordd) && !passwordd.isEmpty {
                                
                                Text("Password must contain, 8 Character, Uppercase, Lowercase, Number, Special Character")
                                    .font(.footnote)
                                    .foregroundColor(.red)
                                    .transition(AnyTransition.opacity.animation(.easeIn))
                            }
                            
                        }.padding(.horizontal)
                        .padding(.bottom, 20)
                        
                        
                        VStack {
                            Button(action: {
                                if self.emailPredicatedata.evaluate(with: emaill) && self.passwordPredicatedata.evaluate(with: passwordd) {
                                    
                                    self.alertIsPresented = true
                                }
                                
                            }, label: {
                                Text("Sign Up")
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
                                Text("Already have an account ?")
                                    .font(.system(size: 18, weight: Font.Weight.medium, design: .default))
                                    .foregroundColor(.gray)
                                    .padding(.top)
                                
                                PushView(
                                    destination: Login_Screen()) {
                                    Text(" Sign in")
                                        .font(.system(size: 19, weight: Font.Weight.light, design: .default))
                                        .foregroundColor(.black)
                                        .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                                        .cornerRadius(10)
                                        .padding(.top)
                                    
                                }
                            }
                        }
                        
                        
                    }.background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .cornerRadius(15)
                    .padding(.horizontal, 5)
                    
                }.padding(.bottom, 100)
                .navigationTitle("Signup")
            }
        }
    }
}

struct SignUp_Screen_Previews: PreviewProvider {
    static var previews: some View {
        SignUp_Screen()
    }
}
