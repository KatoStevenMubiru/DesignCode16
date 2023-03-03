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
    @GestureState var press = false
    
    var longPress: some Gesture{
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transcation in
                <#code#>
            }
        
    }//longPress Gesture
    
    var body : some View{
        
        ZStack {
            switch selectedMenu{
            case .compass:
                MessageView()
                
            case .card:
                Text("Card")
            case .charts:
                Text("Charts")
            case .radial:
                Text("Radial")
            case .halfsheet:
                Text("Half sheet")
            case .gooey:
                Text("Goey")
            case .actionbutton:
                Text("Action Button")
            }
            
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
