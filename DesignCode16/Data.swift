//
//  Data.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 01/03/2023.
//

import Foundation


struct NavigationItem : Identifiable{
    
    var id = UUID()
    var title: String
    var icon: String
}

var navigationItems = [

    NavigationItem(title: "Compass App", icon: "safari"),
    NavigationItem(title: "3D Card", icon: "lanyardcard"),
    NavigationItem(title: "", icon: "")
  
]
