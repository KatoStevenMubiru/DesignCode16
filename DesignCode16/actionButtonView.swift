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
