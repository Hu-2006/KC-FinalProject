//
//  DealView.swift
//  Mala3ib
//
//  Created by Mac on 19/11/2022.
//

import SwiftUI

struct DealView: View {
    var body: some View {
        ZStack{
            Color.blue.opacity(0.6).ignoresSafeArea()
            VStack{
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 100))
                    .foregroundColor(.white)
                    Spacer()
                Text("Reservation done")
                    .font(.largeTitle)
                    .foregroundColor(.blue.opacity(0.6))
                    .frame(width: 290)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(29)
                Spacer()
                Spacer()
                Spacer()
                Spacer()
            
                Text("Thank you for trusting us ")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                NavigationLink {
                    DealsView(H: AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Football","Classico"],lat:29.340187,long: 48.032937))
                } label: {
                    Text("Home")
                        .font(.title3)
                        .foregroundColor(.blue)
                        .frame(width: 190,height: 50)
                        .background(Color.white)
                       
                        .cornerRadius(29)
                    
                }

            }
        }
    }
}

struct DealView_Previews: PreviewProvider {
    static var previews: some View {
        DealView()
    }
}
