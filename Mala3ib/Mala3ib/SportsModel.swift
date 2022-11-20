//
//  SportsModel.swift
//  Mala3ib
//
//  Created by Mac on 18/11/2022.
//

import Foundation
import CoreLocation
import MapKit
struct SportsModel: Identifiable {
    
    let id = UUID()
    
    var Sport : String
    
    var Price : Double
    
    var Area : [AreasModel]
    
}

struct AreasModel: Identifiable,Hashable {
    
    let id = UUID()
    
    var Reagion : String
    var Mala3ib : [String]
    var lat : Double
    var long : Double
}

var MySports = [
    
    SportsModel(Sport: "Football", Price: 25, Area: [AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Classico"],lat: 29.082187,long: 48.070313), AreasModel(Reagion: "Al-Jahra", Mala3ib: ["Al-Jahra Football"],lat:29.344687,long: 47.696062),AreasModel(Reagion: "Farwaniya", Mala3ib: ["Hattrik"],lat: 29.282063,long: 47.981188),AreasModel(Reagion: "Kuwait City", Mala3ib: ["Alshaheed park"],lat: 29.369312,long: 47.993688),AreasModel(Reagion: "Mubarak Al-kabeer", Mala3ib: ["Argan bedaya Football"],lat: 29.261812,long: 48.085687),AreasModel(Reagion: "Hawalli", Mala3ib: ["Aljeel hawalli"],lat: 29.326687,long: 48.022687)]),
    
    
    SportsModel(Sport: "Basketball", Price: 10, Area: [AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi Basketball"],lat: 29.080312,long: 48.070563),AreasModel(Reagion: " Mubarak Al-Kabeer", Mala3ib: ["Argan bedaya basketball"],lat: 29.261812,long: 48.085687)]),
    
    
    SportsModel(Sport: "Padel", Price: 24, Area: [AreasModel(Reagion: "Kuwait City", Mala3ib: ["Padel gardens"],lat: 29.384062,long: 47.993813),AreasModel(Reagion: "Al-Ahmadi", Mala3ib: ["Ahmadi-sport language padel"],lat: 29.080312,long: 48.070563), AreasModel(Reagion: "Al-Jahra", Mala3ib: ["Jahra padel zone"],lat: 29.305438,long: 47.663812), AreasModel(Reagion: " Mubarak Al-Kabeer", Mala3ib: ["FA Padel"],lat: 29.251188,long: 48.088563), AreasModel(Reagion:"Hawalli" , Mala3ib: ["Hawalli Padel"],lat: 29.340187,long: 48.032937)]),
]
