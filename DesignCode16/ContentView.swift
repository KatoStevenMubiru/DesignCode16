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
                    .padding(.all)
                   // .foregroundColor(Color("AccentColor 1"))
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.2).gradient)
                    //.foregroundColor(Color("AccentColor 1"))
                    .cornerRadius(12)
                    //.border(Color("AccentColor 1"), width: 2)
                    .background (
                        RoundedRectangle(cornerRadius: 12)
                            .stroke()
                            .foregroundStyle(.linearGradient(colors:[.white.opacity(0.5), .clear, .white.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom))
                    )
                    .shadow(color: .black.opacity(0.3), radius: 20, y: 20)
                    .padding(12)
            }// button
            .accentColor(.primary)
           
               
        }// vstack
        .padding(30)
        .background(.ultraThinMaterial)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke()
                .foregroundStyle(.linearGradient(colors:[.white.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom))
        )
        .cornerRadius(12)
        .padding()
        .dynamicTypeSize(.xSmall ... .xxxLarge)
        .frame(maxWidth: 500)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))
            
    }
}
