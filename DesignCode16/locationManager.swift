//
//  locationManager.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 04/04/2023.
//

import CoreLocation

class LocationManager : NSObject, ObservableObject, CLLocationManagerDelegate{
    
    let manager = CLLocationManager()
    @Published var degrees : Double = 0
    
    override init() {
        super.init()
        manager.delegate = self
        manager.startUpdatingHeading()
        manager.requestWhenInUseAuthorization()
        
    }//init
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        degrees = newHeading.trueHeading
    }
    
    
    
}//locationManager
func compassDirection(_ degrees : Double) -> String{
    
    let directions = ["N", "NE", "E","SE","S", "SW", "W", "NW"]
    let index = Int(degrees +  22.5 / 45.0) & 7
    return directions[index]
    
}//compassDirection
