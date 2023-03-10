//
//  compactView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 09/03/2023.
//

import SwiftUI

struct compactView: View {
    
    var body: some View {
        
        ZStack {
            
            background
            outerCircles
            circle
            
        }//Zstack
      
        
    }//body
    
    var innerCircles : some View{
        
        ZStack{
            
            innerCircle1.padding(20)
           // innerCircle2.padding(80)
            //innerCircle3.padding(100)
           // innerCircle4.padding(120)
          //  innerCircle5.padding(145)
          //  innerCircle6.padding(170)
           // innerCircle7.padding(180)
            
            
        }//Zstack
        .frame(width: 393)
        
    
    }//innerCircles
    
    
    var innerCircle1 : some View{
        
        Circle()
            .foregroundStyle(
                .linearGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
                .shadow(.inner(color: .white.opacity(0.25),radius: 0, x: 1, y: 1))
            
            
            )
        
        
    }//innerCircle1
    

    var background: some View{
        
        RadialGradient(colors: [Color(#colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.4431372549, alpha: 1)), .black], center: .center, startRadius: 1, endRadius: 400)
            .ignoresSafeArea()
        
    }//background
    
    var outerCircles: some View{
        ZStack{
            
            outerCircle.scaleEffect(1.2)
            outerCircle.scaleEffect(1.5)
            
            
        }//Zstack
        .frame(width: 395)
        
    }//outerCircles
    
    
    
    var outerCircle: some View{
        
        ZStack {
            Circle()
                .foregroundStyle(
                    LinearGradient(colors: [.black.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .shadow(.inner(color: .white.opacity(0.3),radius: 0.5, x: 1, y : 1))
                
            )
                .scaleEffect(1.2)
        }//zstack
        .frame(width: 395)
        
    }//outerCircle
    
    
    var circle : some View{
        ZStack {
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 5, dash: [1, 1]))
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 10, dash: [1, 6]))
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 15, dash: [1, 62]))
        }//Zstack
        .frame(width: 315)
        
    }//circle
    
    var gradient : LinearGradient{
        
        LinearGradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6274509804, blue: 0.7098039216, alpha: 1)), .black], startPoint: .topLeading, endPoint: .bottomTrailing)
        
        
    }// gradient
}

struct compactView_Previews: PreviewProvider {
    static var previews: some View {
        compactView()
    }
}
