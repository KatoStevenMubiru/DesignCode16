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
            RadialGradient(colors: [Color(#colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.4431372549, alpha: 1)), .black], center: .center, startRadius: 1, endRadius: 400)
                .ignoresSafeArea()
            
            
            ZStack {
                Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 5, dash: [1, 1]))
                Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 10, dash: [1, 6]))
                Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 15, dash: [1, 62]))
            }//Zstack
            .frame(width: 315)
        }//Zstack
      
        
    }//body
    
    var gradient : LinearGradient{
        
        LinearGradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6274509804, blue: 0.7098039216, alpha: 1)), .black], startPoint: .topLeading, endPoint: .bottomTrailing)
        
        
    }// gradient
}

struct compactView_Previews: PreviewProvider {
    static var previews: some View {
        compactView()
    }
}
