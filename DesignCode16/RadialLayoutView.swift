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
    @State var isRadial = true
    @State var hour: Double = 0
    @State var minute: Double = 0
    
    var body: some View {
        
       // let layout = isRadial ?
        
        ZStack {
            Rectangle()
                .fill(.gray)
                .ignoresSafeArea(.all)
            
            Circle()
                .foregroundStyle(
                    .gray
                        .shadow(.inner( color: .gray,radius: 30, x: 30, y: 30))
                        .shadow(.inner(color: .white,radius: 0, x: 1, y: 1))
                        .shadow(.inner(color: .black,radius: 0, x: -1, y: -1))
                
                
                )
                .frame(width: 360)
            Circle()
                .foregroundStyle(
                    .white
                        .shadow(.inner(color: .gray, radius: 30, x: -30 , y:-30))
                        .shadow(.drop(color: .black.opacity(0.3), radius: 30, x: 30 , y : 30))
                )
                .frame(width: 320)
            Circle()
                .foregroundStyle(.white.shadow(.inner(color: .gray, radius: 30, x: 30 , y:30)))
                .frame(width: 280)
            
            
            
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
                .strokeBorder(style: StrokeStyle(lineWidth: 10, dash: [1 , 10]))
                .frame(width: 260)
            RoundedRectangle(cornerRadius: 4)
                .foregroundStyle(.black)
                .frame( width: 5, height: 100)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).stroke().fill(.white)
                )
                .offset(y:-46)
                .shadow(radius: 5, y: 5)
                .rotationEffect(Angle.degrees(minute))
                .animation(.linear(duration: 10).repeatCount(12, autoreverses: false), value: minute)
            //minute
            
            RoundedRectangle(cornerRadius: 4)
                .foregroundStyle(.black)
                .frame( width: 8, height: 70)
                .overlay(
                    RoundedRectangle(cornerRadius: 4).stroke().fill(.white)
                )
                .offset(y:-32)
                .shadow(radius: 5, y: 15)
                .rotationEffect(Angle.degrees(hour))
                .animation(.linear(duration: 120), value: hour)
            //hour
           
            
        }//Zstack
        
        .onAppear{
            hour = 360
            minute = 360
            
        }//Onappear
        .onTapGesture {
            withAnimation(.spring()){
                isRadial.toggle()
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
