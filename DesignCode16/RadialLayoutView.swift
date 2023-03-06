//
//  RadialLayoutView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 06/03/2023.
//

import SwiftUI

struct RadialLayoutView: View {
    var icons = ["calendar", "message", "figure.walk","music.note"]
    var numbers = [12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
    
    
    var body: some View {
        
        ZStack {
            radialLayOut {
                
               ForEach(icons, id: \.self) { item in
                    Circle()
                        .frame(width: 44)
                        .foregroundColor(.black)
                        .overlay {
                            Image(systemName: item).foregroundColor(.white)
                    }
                }//forLoop
            }//customLayout
            .frame(width: 120)
            
            //: Hours
            radialLayOut {
                ForEach(numbers, id: \.self) { item in
                    Text("\(item)")
                        .font(.system(.title, design: .rounded)).bold()
                    .foregroundColor(.black)
                }//foreach
            }//radialLayOut
            .frame(width:240)
            
            //: Minutes
            radialLayOut {
                ForEach(numbers, id: \.self) { item in
                    Text("\(item * 5)")
                        .font(.system(.subheadline, design: .rounded))
                    .foregroundColor(.black)
                }//foreach
            }//radialLayOut
            .frame(width:360)
            
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 10))
            
            
        }//Zstack
        
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
struct radialLayOut: Layout{
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        proposal.replacingUnspecifiedDimensions()
    }
    
    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        
        let radius = bounds.width/2.5
        let angles = Angle.degrees(360.0/Double(subviews.count)).radians
        
        for(index, subview) in subviews.enumerated(){
            var point = CGPoint(x:0, y: -radius).applying(CGAffineTransform(rotationAngle: angles * Double(index)))
            
            point.x += bounds.midX
            point.y += bounds.midY
            
            subview.place(at: point , anchor: .center, proposal: .unspecified)
            
            
        }//for loop
    }
    
    
}
