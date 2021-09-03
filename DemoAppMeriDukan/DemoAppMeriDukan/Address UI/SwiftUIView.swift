//
//  SwiftUIView.swift
//  DemoAppMeriDukan
//
//  Created by iOS Dev2 on 24/08/21.
//

import SwiftUI

struct RadioButtonField: View {
    let id: String
    let label: String
    let size: CGFloat
    let color: Color
    let textSize: CGFloat
    let isMarked: Bool
    let callBack: (String) -> ()
    
    init(
        
        id: String,
        label: String,
        size: CGFloat = 20,
        textSize: CGFloat = 14,
        color:Color = Color.black,
        isMarked: Bool = false,
        callBack: @escaping(String) -> ())
    {
        self.id = id
        self.label = label
        self.size = size
        self.textSize = textSize
        self.color = color
        self.isMarked = isMarked
        self.callBack = callBack
    }
    
    var body: some View {
        Button(action:{
            self.callBack(self.id)
        }){
            HStack(alignment: .center, spacing: 10) {
                Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: self.size, height: self.size)
                
                Text(label)
                    .font(Font.system(size:textSize))
                
                Spacer()
            }.foregroundColor(self.color)
        }.foregroundColor(Color.white)
    }
}

// Mark - Group of radio button

enum Gender: String {

    case male = "Male"
    case female = "Female"
}

struct RadioButtonGroup: View {
    let callBack: (String) -> ()
    @State var selectedID: String = ""
    
    var body: some View {
        VStack {
            radioMale
            radioFemale
        }
    }
    
    var radioMale: some View {
        RadioButtonField(
        
            id: Gender.male.rawValue,
            label: Gender.male.rawValue,
            isMarked: selectedID == Gender.male.rawValue ? true : false,
            callBack: radioGroupCallback
        )
    }
    
    var radioFemale: some View {
        RadioButtonField(
        
            id: Gender.female.rawValue,
            label: Gender.female.rawValue,
            isMarked: selectedID == Gender.female.rawValue ? true : false,
            callBack: radioGroupCallback
        )
    }
    
    func radioGroupCallback(id: String){
        selectedID = id
        callBack(id)
    }
}

struct SwiftUIView: View {
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        VStack(alignment: .leading) {
                            Text("Sample Address")
                            Text("Your City")
                        }
                        
                        
                        
                        
                        Spacer()
                        
                        RadioButtonGroup.init(callBack: {
                            selected in
                            print("Selected Gender is \(selected)")
                        })
                       
                    }
                    
                }.padding()
                
                Button(action: {
                    print("Add Address tapped")
                }) {
                    Text("Add Address")
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .frame(height: 30)
                        .padding()
                        .foregroundColor(.blue)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [10]))
                        )
                }.padding(.top, 400)
                
                .padding()
                
                Button(action: {
                    print("Add Address tapped")
                }) {
                    Text("Continue To Payment")
                        
                        .frame(width: 320, height: 30)
                        .font(.system(size: 20, weight: Font.Weight.bold, design: .default))
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(10)
                }.padding(.bottom)
            }
            .navigationTitle("Address")
            .navigationBarItems(leading:
                                    
                                    
                                    Image(systemName: "arrow.backward").imageScale(.large)
                                    .foregroundColor(Color.black)
                                
                                , trailing:
                                    
                                    HStack {
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


struct RadioButton: View {
    
    @Binding var checked: Bool    //the variable that determines if its checked
    
    var body: some View {
        Group{
            if checked {
                ZStack{
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 20, height: 20)
                    Circle()
                        .fill(Color.white)
                        .frame(width: 8, height: 8)
                }.onTapGesture {self.checked = false}
            } else {
                Circle()
                    .fill(Color.white)
                    .frame(width: 20, height: 20)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .onTapGesture {self.checked = true}
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
