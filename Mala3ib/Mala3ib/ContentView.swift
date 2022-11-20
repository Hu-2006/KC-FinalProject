//
//  ContentView.swift
//  Mala3ib
//
//  Created by Mac on 18/11/2022.
//

import SwiftUI

struct secureTextField: View {

    @State private var isSecureField: Bool = true
    @State  var text: String

    var body: some View {
        HStack{
            if isSecureField {
                SecureField("    Password", text: $text )
            } else {
                TextField(text, text: $text )
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecureField ? "eye.slash" : "eye")
                .padding()
                .onTapGesture {
                    isSecureField.toggle()
                }
        }
    }
}

struct ContentView: View {

    @State var Username = ""
    @State var Password = ""

    var body: some View {
        NavigationView{
            ZStack{
                Color.blue.opacity(0.6).edgesIgnoringSafeArea(.all)
                
                VStack{
                    Spacer()
                    
                    Text("Welcome to")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    
                    Text("Mala3ib")
                        .font(.title)
                        .foregroundColor(Color.white)
                     
                    Spacer()
                    
                    Text("Sign in")
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                    Spacer()
                    
                    VStack(spacing: 15){
                     
                        TextField("UserName", text: $Username)
                            .font(.headline)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                     
                        
                        secureTextField(text: Password)
                            .font(.headline)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                           
                    }
                    .padding()
                    NavigationLink(destination: DealsView(H: AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Football","Classico"],lat: 29.340187,long: 48.032937))) {
                        Text("Sign")
                            .font(.title3)
                            .foregroundColor(.blue).opacity(0.6)
                            .frame(width: 200,height: 50)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                    }
                    
                    Spacer()
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
