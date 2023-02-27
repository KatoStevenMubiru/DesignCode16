//
//  ContentView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: 0.4)
                .imageScale(.large)
                .foregroundColor(Color("AccentColor 1"))
                .font(.system(size: 50))
                .font(.largeTitle)
                .fontWeight(.thin)
                
            Text("Swicthing apps ")
                .font(.largeTitle)
                .fontWeight(.bold)
               
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
            Button{
                //acion
            }label: {
                Text("Got It")
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    //.foregroundColor(Color("AccentColor 1"))
                    .padding(.all)
                    //.border(Color("AccentColor 1"), width: 2)
                    .background (
                        RoundedRectangle(cornerRadius: 12)
                            .stroke()
                    )
            }// button
            .foregroundColor(Color("AccentColor 1"))
           
               
        }// vstack
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
