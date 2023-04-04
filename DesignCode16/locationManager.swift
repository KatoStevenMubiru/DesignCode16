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
        manager.delegate = self
        manager.startUpdatingHeading()
        
    }
    
    
    
    
}
