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
            
            Canvas{ context, size in
                
                context.fill(Path(ellipseIn: CGRect(x: 0, y: 0, width: 56, height: 56)), with: .color(.white))
                
            }// Canvas
            
            
        }//Zstack
        .background(.black)
        .ignoresSafeArea(.all)
    }
}

struct actionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        actionButtonView()
    }
}
