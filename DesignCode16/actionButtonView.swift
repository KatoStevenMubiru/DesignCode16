//
//  actionButtonView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 08/03/2023.
//

import SwiftUI

struct actionButtonView: View {
    var body: some View {
        
        ZStack {
            Image("UI 1")
                .resizable()
            .cornerRadius(50)
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .overlay(Rectangle().fill(.black.opacity(0.5)).blendMode(.overlay))
                .mask(canvas)
                .shadow(color: .white.opacity(0.2),radius: 0, x :-1 , y: -1)
                .shadow(color: .white.opacity(0.2),radius: 0, x :-1 , y: -1)
                .shadow(color: .white.opacity(0.5),radius: 10, x :10 , y: 10)
                .overlay {
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                        .offset(x: -28 ,y: -28)
                }
            
        }//Zstack
        .background(.black)
        .ignoresSafeArea(.all)
        .preferredColorScheme(.dark)
    }
    var canvas: some View{
        Canvas{ context, size in
            if let symbol = context.resolve(id(1)){
                
                context.draw()
                
            }//if
            
            //context.fill(Path(ellipseIn: CGRect(x: size.width-72 , y: size.height-70, width: 56, height: 56)), with: .color(.black))
        } symbols: {
            Circle()
                .frame(width: 76)
                .tag(1)
            Circle()
                .frame(width: 76)
                .tag(2)
                .offset(x: -50)
        }
        
        
    }//canvas
}

struct actionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        actionButtonView()
    }
}
