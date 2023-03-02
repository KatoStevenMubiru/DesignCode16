//
//  Data.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 01/03/2023.
//

import Foundation


struct NavigationItem : Identifiable, Hashable{
    
    var id = UUID()
    var title: String
    var icon: String
    var menu: Menu
}

var navigationItems = [

    NavigationItem(title: "Compass App", icon: "safari"),
    NavigationItem(title: "3D Card", icon: "lanyardcard"),
    NavigationItem(title: "", icon: "")
  
]

enum Menu: String{
    case compass
    case card
    
}
