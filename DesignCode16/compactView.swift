//
//  compactView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 09/03/2023.
//

import SwiftUI
import CoreLocationUI


struct compactView: View {
    @State var location: CGPoint = .zero
   // @State var translation:CGPoint = .zero
    @State var isDragging = false
    @ObservedObject var locationManager = LocationManager()
    
    var body: some View {
        
        ZStack {
            
            background
            outerCircles
            innerCircles
            flashLight
            wayPoints
                .rotationEffect(.degrees(locationManager.degrees))
            circleLabel
            circle
                .rotationEffect(.degrees(locationManager.degrees))
            light
            title
        }//Zstack
        .gesture(drag)
        
    }//body
    var title : some View{
        VStack {
            Text("\(String(format: "%.0f",locationManager.degrees))°\(compassDirection(locationManager.degrees))")
            Text("Washington".uppercased())
                .font(.footnote)
            if let myLocation = locationManager.location{
                Text("Longtitude : \(myLocation.longitude.formatted(.number.precision(.fractionLength(2)))), Latitude : \(myLocation.latitude.formatted(.number.precision(.fractionLength(2))))")
                    .font(.footnote)
                
                
            }else{
                
                LocationButton{
                    locationManager.requestLocation()
                    
                }//locationButton
                .labelStyle(.iconOnly)
                .cornerRadius(20)
                .font(.footnote)
            }//else
            
         
        }
      
        .font(.largeTitle)
        .fontWeight(.medium)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            
        
    }//text
    
    var wayPoints : some View{
        
        ZStack {
            Circle()
                .fill(.red)
                .frame(width: 16)
            .offset(x: 100, y: 210)
            Circle()
                .fill(.yellow)
                .frame(width: 16)
            .offset(x: -120, y: -200)
            Circle()
                .fill(.green)
                .frame(width: 16)
            .offset(x: 100, y: -150)
        }
        
        
        
    }//wayPoints
    var flashLight : some View{
        
        GeometryReader{ proxy in
            ZStack {
                Circle()
                    .fill(.radialGradient(colors: [.white.opacity(0.2), .clear], center: .center, startRadius: 0, endRadius: 200))
                    .offset(x: location.x-200, y: location.y-380)
                    .opacity(isDragging ? 1 : 0)
                Circle()
                    .fill(.radialGradient(colors: [.white, .clear], center: .center, startRadius: 0, endRadius: 200))
                    .offset(x: location.x-200, y: location.y-380)
                    .opacity(isDragging ? 1 : 0)
                    .mask(
                        ZStack {
                            Circle().stroke().scaleEffect(1.2)
                            Circle().stroke().scaleEffect(1.5)
                            Circle().stroke().padding(20)
                            Circle().stroke().padding(80)
                            Circle().stroke().padding(100)
                            Circle().stroke().padding(120)
                            Circle().stroke().padding(145)
                            Circle().stroke().padding(170)
                            Group {
                                Text("Ewammwe❤️")
                                    .offset(x: 0, y: -210)
                                .rotationEffect(.degrees(-31))
                                Text("Emotokka")
                                    .rotationEffect(.degrees(171))
                                    .offset(x: 0, y: 60)
                                
                                Text("N")
                                    .rotationEffect(.degrees(0))
                                    .offset(x: 0, y: -135)
                               
                                Text("E")
                                    .rotationEffect(.degrees(90))
                                    .offset(x: 135, y: 0)
                                
                                Text("S")
                                    .rotationEffect(.degrees(180))
                                    .offset(x: 0, y: 135)
                              
                                Text("W")
                                    .rotationEffect(.degrees(270))
                                    .offset(x: -135, y: 0)
                                
                            }//group
                            .rotationEffect(.degrees(locationManager.degrees))
                            
                        }//Zsstack
                            .frame(width: 393)
                    )//mask
            }//Zstack
            .frame(
                width: proxy.frame(in: .global).width,
                height: proxy.frame(in: .global).height
            )//frame
            
        }//GeometryReader
    }//flashLight gesture
    
    var drag : some Gesture{
        
        DragGesture()
            .onChanged { value in
                location = value.location
                isDragging = true
            }//onChanged
            .onEnded { value in
                isDragging = false
            }//onEnded
        
        
        
    }//drag
    
    
    var circleLabel : some View{
        
        circleLabelView(diameter: 225).foregroundStyle(.white)
        
    }//circleLabel
    var light : some View{
        Circle()
            .trim(from: 0.6, to: 0.9)
            .stroke(.radialGradient(colors: [.white.opacity(0.35), .clear], center: .center, startRadius: 0.2, endRadius: 200), style: StrokeStyle(lineWidth: 200))
            .frame(width: 200)
    }
    
    var innerCircles : some View{
        
        ZStack{
            
            innerCircle1.padding(20)
            innerCircle2.padding(80)
            innerCircle3.padding(100)
            innerCircle4.padding(120)
            innerCircle4.padding(145)
            innerCircle4.padding(170)
            innerCircle5.padding(185)
            
            
        }//Zstack
        .frame(width: 393)
        
    
    }//innerCircles
    
    
    var innerCircle1 : some View{
        
        Circle()
            .foregroundStyle(
                .linearGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
                .shadow(.inner(color: .white.opacity(0.25),radius: 0, x: 1, y: 1))
                .shadow(.inner(color: .black.opacity(0.25),radius: 0, x: 1, y: 1))
            )
        
        
    }//innerCircle1
    
    var innerCircle2 : some View{
        
        Circle()
            .foregroundStyle(
                .linearGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
                .shadow(.inner(color: .white.opacity(0.25),radius: 0, x: 1, y: 1))
                .shadow(.inner(color: .black.opacity(0.25),radius: 0, x: 1, y: 1))
            )
    }//innerCircle2
    
    var innerCircle3: some View{
        
        Circle()
            .foregroundStyle(
                .radialGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))], center: .center, startRadius: 0,endRadius: 100)
                .shadow(.inner(color: .white.opacity(0.25),radius: 0, x: 1, y: 1))
                .shadow(.drop(color: .black.opacity(0.25),radius: 0, x: 1, y: 1))
            )
        
    }//innerCircle3
    
    var innerCircle4: some View{
        
        Circle()
            .foregroundStyle(
                .linearGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.5),Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.0)], startPoint: .topLeading, endPoint: .bottomTrailing)
                .shadow(.inner(color: .white.opacity(0.5),radius: 0, x: 1, y: 1))
                
            )
        
        
    }//innerCircle4
    
    var innerCircle5: some View{
        
        Circle()
            .foregroundStyle(.white)
        
        
    }//innerCircle5

    var background: some View{
        
        RadialGradient(colors: [Color(#colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.4431372549, alpha: 1)), .black], center: .center, startRadius: 1, endRadius: 400)
            .ignoresSafeArea()
        
    }//background
    
    var outerCircles: some View{
        ZStack{
            
            outerCircle.scaleEffect(1.2)
            outerCircle.scaleEffect(1.5)
            
            
        }//Zstack
        .frame(width: 395)
        
    }//outerCircles
    
    
    
    var outerCircle: some View{
        
        ZStack {
            Circle()
                .foregroundStyle(
                    LinearGradient(colors: [.black.opacity(0.5), .clear], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .shadow(.inner(color: .white.opacity(0.3),radius: 0.5, x: 1, y : 1))
                
            )
                .scaleEffect(1.2)
        }//zstack
        .frame(width: 395)
        
    }//outerCircle
    
    
    var circle : some View{
        ZStack {
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 5, dash: [1, 1]))
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 10, dash: [1, 6]))
            Circle().strokeBorder(gradient, style: StrokeStyle(lineWidth: 15, dash: [1, 62]))
        }//Zstack
        .frame(width: 315)
        
    }//circle
    
    var gradient : LinearGradient{
        
        LinearGradient(colors: [Color(#colorLiteral(red: 0.6196078431, green: 0.6274509804, blue: 0.7098039216, alpha: 1)), .black], startPoint: .topLeading, endPoint: .bottomTrailing)
        
        
    }// gradient
}

struct compactView_Previews: PreviewProvider {
    static var previews: some View {
        compactView()
    }
}
