//
//  DealsView.swift
//  Mala3ib
//
//  Created by Mac on 18/11/2022.
//

import SwiftUI
struct DealsView: View {
   
    var H : AreasModel
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack(spacing: 25){
                    
                        ForEach(MySports){ Sp in
                            
                            NavigationLink(destination: CourtsView(Area:Sp)) {
                                CardView(title: Sp.Sport, image: Sp.Sport)
                            }
                    }
                }
            }
                .navigationTitle("Choose the Sport")
                
            }
        .navigationBarBackButtonHidden(true)
        

        }
    }


struct DealsView_Previews: PreviewProvider {
    static var previews: some View {
        DealsView(H: AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Football","Classico"],lat:29.340187,long: 48.032937))
    }
}
