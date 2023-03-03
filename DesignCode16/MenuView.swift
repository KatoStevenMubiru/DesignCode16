//
//  MenuView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 03/03/2023.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        List(navigationItems){ item in
            Label(item.title, systemImage: item.icon)
                .foregroundColor(.primary)
            
            
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
