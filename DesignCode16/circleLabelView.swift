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
        
        VStack {
            ForEach(Array(text.enumerated()), id: \.offset) { index, letter in
            
                    Text(String(letter))
                
            }
        }//forEach
    }
}

struct circleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        circleLabelView()
    }
}
