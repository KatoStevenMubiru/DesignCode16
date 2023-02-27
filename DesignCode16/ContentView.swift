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
                
            Text("Switching apps ".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
               
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button{
                //acion
            }label: {
                Text("Got It")
                    .foregroundColor(Color("AccentColor 1"))
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
        .padding(30)
        .background(.ultraThinMaterial)
        .overlay(RoundedRectangle(cornerRadius: 12).stroke())
        .cornerRadius(12)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))
    }
}
