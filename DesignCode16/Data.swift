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

    NavigationItem(title: "Compass App", icon: "safari", menu: .compass),
    NavigationItem(title: "3D Card", icon: "lanyardcard", menu: .card ),
    NavigationItem(title: "", icon: "", menu: .radial),
    NavigationItem(title: "", icon: "", menu:.charts)
    NavigationItem(title: "", icon: "", menu: .halfsheet)
    NavigationItem(title: "", icon: "", menu: .gooey)
    NavigationItem(title: "", icon: "", menu: .actionbutton)
  
]

enum Menu: String{
    case compass
    case card
    case charts
    case radial
    case halfsheet
    case gooey
    case actionbutton
    
}