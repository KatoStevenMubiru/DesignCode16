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
            
            List(0 ..< 5) { item in
                
                Label("Item", systemImage: "house")

            }// end of list
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
