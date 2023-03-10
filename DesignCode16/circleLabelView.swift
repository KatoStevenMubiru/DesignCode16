//
//  circleLabelView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 10/03/2023.
//

import SwiftUI

struct circleLabelView: View {
    
    var text = "Latitude".uppercased()
    
    var body: some View {
        
            ZStack {
            ForEach(Array(text.enumerated()), id: \.offset) { index, letter in
            
                VStack {
                    Text(String(letter))
                        
                }//Vstack
                .rotationEffect(.degrees(5 * index))
            }//forEach        }//forEach
    }
}

struct circleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        circleLabelView()
    }
}
