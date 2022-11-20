//
//  CardView.swift
//  Mala3ib
//
//  Created by Mac on 18/11/2022.
//

import SwiftUI

struct CardView: View {
    
    @State var title : String
    @State var image : String
   
    var body: some View {
        
        ZStack{
            Color.white
            
            VStack{
                
                Image(image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                    .shadow(color: Color.blue ,radius: 4)
                
                VStack(spacing: 8) {
                        Text(title)
                        .font(.title)
                        .foregroundColor(.blue)
                            .fontWeight(.bold)
                }
            }
            .frame(width: 155, height: 200)
            
            
            
        }
        .frame(width: 180, height: 200)
        .cornerRadius(10)
        .shadow(color: Color.blue ,radius: 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "football", image: "football")
    }
}
