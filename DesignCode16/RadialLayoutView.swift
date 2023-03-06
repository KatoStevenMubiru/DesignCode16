//
//  RadialLayoutView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 06/03/2023.
//

import SwiftUI

struct RadialLayoutView: View {
    var icons = ["calendar", "message", "figure.walk","music.note"]
    
    var body: some View {
       customLayOut {
            
           ForEach(icons, id: \.self) { item in
                Circle()
                    .frame(width: 44)
                    .overlay {
                        Image(systemName: item).foregroundColor(.white)
                }
            }
        }
        
    }
}

struct RadialLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        RadialLayoutView()
    }
}
struct customLayOut: Layout{
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        for(index, subview) in subviews.enumerated(){
            var point = CGPoint(x: 50*index, y: 50*index).applying(CGAffineTransform(rotationAngle: 2))
            
            point.x += bounds.midX
            point.y += bounds.midY
            
            subview.place(at: point , anchor: .center, proposal: .unspecified)
            
            
        }//for loop
    }
    
    
}
