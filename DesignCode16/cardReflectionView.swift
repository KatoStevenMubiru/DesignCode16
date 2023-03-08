//
//  cardReflectionView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 08/03/2023.
//

import SwiftUI

struct cardReflectionView: View {
    var body: some View {
        
        Image("Background 1")
            .overlay(
                ZStack {
                    Image("Logo 1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(width: 180)
                }//Zstack
            )//overlay
        
    }
}

struct cardReflectionView_Previews: PreviewProvider {
    static var previews: some View {
        cardReflectionView()
    }
}
