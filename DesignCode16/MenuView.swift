//
//  MenuView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 03/03/2023.
//

import SwiftUI

struct MenuView: View {
    @Binding var selectedMenu : Menu
    var body: some View {
        List(navigationItems){ item in
            
            Button{
                selectedMenu = item.menu
            } label: {
                Label(item.title, systemImage: item.icon)
                    .foregroundColor(.primary)
                    .padding(8)
            }
            
            
            
        }// end of List
        .listStyle(.plain)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(selectedMenu: .constant(.compass))
    }
}
