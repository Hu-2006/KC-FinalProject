//
//  CourtsView.swift
//  Mala3ib
//
//  Created by Mac on 18/11/2022.
//

import SwiftUI
import MapKit
import CoreLocation
struct CourtsView: View {
    
    let Area : SportsModel
       
    @State var selectedDate: Date = Date()
    var body: some View {
        ZStack{
           
            VStack{
                Text(selectedDate.formatted(date: .abbreviated, time: .standard))
                    .font(.system(size: 28))
                    .bold()
                    .foregroundColor(Color.accentColor)
                    .padding()
                    .animation(.spring(), value: selectedDate)
                Divider()
                
                DatePicker("Select Date", selection: $selectedDate)
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                
                Spacer()
                
                
                ScrollView{
                    ForEach(Area.Area) {n in
                        NavigationLink {
                            Mal3abView(name: "\(n.Reagion) \(Area.Sport)",lat: n.lat, long: n.long, price: Area.Price, region: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: n.lat, longitude: n.long), span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.5))))
                        } label: {
                            ZStack{
                                Color.white
                                
                                VStack{
                                    VStack(spacing: 8) {
                                        Text(n.Reagion)
                                            .font(.title)
                                            .foregroundColor(.blue)
                                                .fontWeight(.bold)
                                    }
                                }
                                .frame(width: 155, height: 100)
                                
                                
                                
                            }
                            .frame(width: 200, height: 80)
                            .cornerRadius(10)
                            .shadow(color: Color.blue ,radius: 8)

                        }
                            .padding()
                    }
                }
            }
            
            
            
        }
    }
}
      




struct CourtsView_Previews: PreviewProvider {
    static var previews: some View {
        CourtsView(Area: SportsModel(Sport: "Football", Price: 25, Area: [AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["",""],lat: 29.340187,long: 48.032937)]))
    }
}
