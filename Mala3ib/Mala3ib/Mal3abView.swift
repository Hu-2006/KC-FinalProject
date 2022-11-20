//
//  Mal3ab.swift
//  Mala3ib
//
//  Created by Mac on 19/11/2022.
//

import SwiftUI
import CoreLocation
import MapKit
struct Mal3abView: View {
    var name : String
    var lat : Double
    var long : Double
    var price : Double
    @Binding var region : MKCoordinateRegion
    @State var n = [location(name: "football", coordinates: CLLocationCoordinate2D(latitude: 29.082187, longitude: 48.070187))]
    var body: some View {
        ZStack{
         
            VStack{
                Map(coordinateRegion: $region, annotationItems: [location(name: "", coordinates: CLLocationCoordinate2D(latitude: lat, longitude: long))]){ marker in
                    MapMarker(coordinate: marker.coordinates)
                }
                .ignoresSafeArea()
                .frame(width: 400,height: 300)
                Text("")
                Spacer()
                
                CardView(title:name, image: name)
                
                Spacer()
                HStack{
                    Text("The Price = \(price, specifier: "%.2f") ")
                        .foregroundColor(.blue)
                    
                    NavigationLink {
                        DealView()
                    } label: {
                        Image(systemName: "checkmark.circle")
                            .font(.system(size: 50))
                            .foregroundColor(.blue)
                    }
                }
                
                
            }
            
        }
        
    }
}

//struct Mal3ab_Previews: PreviewProvider {
//    static var previews: some View {
//        Mal3abView(name: "Al-Ahmadi football", region: .constant( MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 29.378586, longitude: 47.990341), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.5))))
//    }
//}
 struct location: Identifiable {
    let id = UUID()
    let name : String
    let coordinates : CLLocationCoordinate2D
}

