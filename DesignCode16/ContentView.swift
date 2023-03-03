//
//  ContentView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var selectedMenu: Menu = .compass
    
    var body : some View{
        
        ZStack {
            
            Button("Show Menu"){
                showMenu = true
            }//button
            .sheet(isPresented: $showMenu) {
                MenuView(selectedMenu: $selectedMenu)
                    .presentationDetents([.medium, .large])
        }// sheet
        }//Zstack
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
