//
//  ContentView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @AppStorage("selectedMenu") var selectedMenu: Menu = .compass
    @GestureState var press = false
    
    var longPress: some Gesture{
        LongPressGesture(minimumDuration: 1)
            .updating($press) { currentState, gestureState, transcation in
                gestureState = currentState
            }
            .onEnded { value in
                showMenu = true
            }
        
    }//longPress Gesture
    
    var body : some View{
        
        ZStack {
            Color(.systemBackground).ignoresSafeArea()
            
            
            switch selectedMenu{
            case .compass:
                compactView()
                
            case .card:
                Text("Card")
            case .charts:
                DetailView()
            case .radial:
               RadialLayoutView()
            case .halfsheet:
                MenuView()
            case .gooey:
                Text("Goey")
            case .actionbutton:
             actionButtonView()
            }
            
            //Button("Show Menu"){
              //  showMenu = true
            //}//button
            
        }//Zstack
        .overlay(content: {
            MessageView()
        })
        .onTapGesture { }
        .gesture(longPress)
        .sheet(isPresented: $showMenu) {
            MenuView()
                .presentationDetents([.medium, .large])
    }// sheet
    }
   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
