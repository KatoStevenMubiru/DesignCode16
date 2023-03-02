//
//  NavigationStackView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 26/02/2023.
//

import SwiftUI

struct NavigationStackView: View {
    var body: some View {
        
        
        NavigationStack{
            
            List(navigationItems) { item in
                
                NavigationLink(destination: Text(item.title)){
                    Label(item.title, systemImage: item.icon)
                }

            }// end of list
            .navigationDestination(for: NavigationItem.self ){ item in
                
                
            }//navigationDest
            .navigationTitle("Apps")
        .navigationBarTitleDisplayMode(.inline)
        .listStyle(.plain)
        }// end of navigation stack
       
    
    }
}

struct NavigationStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackView()
    }
}
