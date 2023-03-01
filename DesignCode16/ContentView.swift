//
//  ContentView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 25/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State var time = 0.0
    @State var showMessage = true
    let timer  = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View{
       
        content
            .opacity(showMessage ? 1 : 0 )
            .scaleEffect(showMessage ? 1 : 0)
            .rotationEffect(.degrees(showMessage ? 0 : 30))
            .offset(y: showMessage ? 0 : 500)
            .blur(radius: showMessage ? 0 : 20)
    }// body
    
    var content: some View {
        VStack(alignment: .center, spacing: 20.0) {
            Image(systemName: "timelapse", variableValue: time)
                .imageScale(.large)
                .foregroundColor(Color("AccentColor 1"))
                .font(.system(size: 50))
                .font(.largeTitle)
                .fontWeight(.thin)
                .onReceive(timer) { value in
                    
                    if time < 1.0{
                        time += 0.1
                    }else{
                        //time = 0.0
                    }
                }
                
            Text("Switching apps ".uppercased())
                .font(.largeTitle.width(.condensed))
                .fontWeight(.bold)
               
            Text("Tap and hold any part of the screen for 1 second to show the menu for switching between apps.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .fontWeight(.medium)
            
            Button{
                withAnimation(.easeInOut) {
                    showMessage = false
                }
                
               
                
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
                        stroke
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
        .padding(12)
        .dynamicTypeSize(.xSmall ... .xxxLarge)
        .frame(maxWidth: 500)
    }
    
    var stroke : some View{
        
        RoundedRectangle(cornerRadius: 12)
            .stroke()
            .foregroundStyle(.linearGradient(colors:[.white.opacity(0.5), .clear, .white.opacity(0.5), .clear], startPoint: .top, endPoint: .bottom))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .background(Image("Wallpaper 2"))
            
    }
}
