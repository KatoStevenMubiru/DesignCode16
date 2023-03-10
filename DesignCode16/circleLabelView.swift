//
//  circleLabelView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 10/03/2023.
//

import SwiftUI

struct circleLabelView: View {
    
    var text = "Latitude 35.08587 E • Longitude 21.43673 W • Elevation 64M • Incline 12 •".uppercased()
    var textWidth : Double = 4.9
    var diameter : Double = 300
    
    var body: some View {
        
        ZStack {
            ForEach(Array(text.enumerated()), id: \.offset) { index, letter in
                
                VStack {
                    Text(String(letter))
                    Spacer()
                    
                }//Vstack
                .rotationEffect(.degrees( textWidth * Double(index)))
            }//forEach        }//forEach
            
        }//Zstack
        .frame(width: 300, height: 300)
        .font(.system(size: 14, design: .monospaced))
    }
}

struct circleLabelView_Previews: PreviewProvider {
    static var previews: some View {
        circleLabelView()
    }
}
