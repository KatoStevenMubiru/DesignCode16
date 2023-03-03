//
//  ContentView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    
    var body : some View{
        
        Button("Show Menu"){
            showMenu = true
        }//button
        .sheet(isPresented: $showMenu) {
            NavigationStackView()
                .presentationDetents([.medium, .large])
        }// sheet
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
