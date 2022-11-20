//
//  AccountView.swift
//  Mala3ib
//
//  Created by Mac on 20/11/2022.
//


import SwiftUI


struct AccountView: View {
    var body: some View {
        
        Home()
            // for light status bar...
            .preferredColorScheme(.dark)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AccountView()
        }
    }
}

struct Home : View {
    
    @State var index = 0
    
    var body: some View{
        
        GeometryReader{_ in
            
            VStack{
                
              Spacer()
                
                ZStack{
                    
                    SignUP(index: self.$index)
                        // changing view order...
                        .zIndex(Double(self.index))
                    
                    Login(index: self.$index)

                }
                
                HStack(spacing: 15){
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 1)
                    
                    Text("OR")
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(height: 1)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                // because login button is moved 25 in y axis and 25 padding = 50
                
                HStack(spacing: 25){
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("apple")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("fb")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("twitter")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    }
                }
                .padding(.top, 30)
                
                Spacer()
            }
            .padding(.vertical)
        }
        .background(Color("Color").edgesIgnoringSafeArea(.all))
    }
}

// Curve...

struct CShape : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            // right side curve...
            
            path.move(to: CGPoint(x: rect.width, y: 100))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: 0))
            
        }
    }
}


struct CShape1 : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        return Path{path in

            // left side curve...
            
            path.move(to: CGPoint(x: 0, y: 100))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
        }
    }
}

//struct SecureTextField: View {
//
//    @State private var isSecureField: Bool = true
//    @State  var text: String
//
//    var body: some View {
//        HStack{
//            if isSecureField {
//                SecureField("Password", text: $text )
//            } else {
//                TextField(text, text: $text )
//            }
//        }.overlay(alignment: .leading) {
//            Image(systemName: isSecureField ? "eye.slash.fill" : "eye.fill")
//                .foregroundColor(.blue)
//                .onTapGesture {
//                    isSecureField.toggle()
//                }
//        }
//    }
//}

struct Login : View {
    
    @State private var isSecureField: Bool = true
    
    @State var email = ""
    @State var pass = ""
    @Binding var index : Int
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack{
                    
                    VStack(spacing: 10){
                        
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 0 ? Color.blue.opacity(0.5) : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top, 30)// for top curve...
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.blue)

                        TextField("Email Address", text: self.$email)

                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: isSecureField ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.blue)
                            .onTapGesture {
                                isSecureField.toggle()
                            }
                        
                        if isSecureField {
                            SecureField("Password", text: self.$pass)
                                .foregroundColor(Color.white.opacity(0.6))
                        } else {
                            TextField("Password", text: self.$pass)
                        }

                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                HStack{
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("Forget Password?")
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            // bottom padding...
            .padding(.bottom, 65)
            .background(Color("Color2"))
            .clipShape(CShape())
            .contentShape(CShape())
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
            
                self.index = 0
                    
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            // Button...
            
            NavigationLink(destination: DealsView(H: AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Football","Classico"],lat: 29.340187,long: 48.032937)) ) {
                        
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    // shadow...
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            // moving view down..
            .offset(y: 25)
            .opacity(self.index == 0 ? 1 : 0)
        }
    }
}

// SignUP Page..

struct SignUP : View {
    
    @State private var isSecureField1: Bool = true
    @State private var isSecureField2: Bool = true

    @State var email = ""
    @State var pass = ""
    @State var Repass = ""
    @Binding var index : Int
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            
            VStack{
                
                HStack{
                    
                    Spacer(minLength: 0)
                    
                    VStack(spacing: 10){
                        
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? .white : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? Color.blue.opacity(0.5) : Color.clear)
                            .frame(width: 100, height: 5)
                    }
                }
                .padding(.top, 30)// for top curve...
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.blue)

                        TextField("Email Address", text: self.$email)
                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: isSecureField1 ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.blue)
                            .onTapGesture {
                                isSecureField1.toggle()
                            }
                        
                        if isSecureField1 {
                            SecureField("Password", text: self.$pass)
                                .foregroundColor(Color.white.opacity(0.6))
                        } else {
                            TextField("Password", text: self.$pass)
                        }

                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                // replacing forget password with reenter password...
                // so same height will be maintained...
//                $Repass
                VStack{
                    
                    HStack(spacing: 15){
                        
                        Image(systemName: isSecureField2 ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(.blue)
                            .onTapGesture {
                                isSecureField2.toggle()
                            }
                        
                        if isSecureField2 {
                            SecureField("Password", text: self.$Repass)
                                .foregroundColor(Color.white.opacity(0.6))
                        } else {
                            TextField("Password", text: self.$Repass)
                        }

                    }
                    
                    Divider().background(Color.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            // bottom padding...
            .padding(.bottom, 65)
            .background(Color("Color2"))
            .clipShape(CShape1())
            // clipping the content shape also for tap gesture...
            .contentShape(CShape1())
            // shadow...
            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
            
                self.index = 1
                    
            }
            .cornerRadius(35)
            .padding(.horizontal,20)
            
            // Button...
            
            NavigationLink(destination: DealsView(H: AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Football","Classico"],lat: 29.340187,long: 48.032937)) ) {
                
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.blue)
                    .clipShape(Capsule())
                    // shadow...
                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            // moving view down..
            .offset(y: 25)
            // hiding view when its in background...
            // only button...
            .opacity(self.index == 1 ? 1 : 0)
        }
    }
}
