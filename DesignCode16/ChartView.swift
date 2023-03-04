//
//  ChartView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 04/03/2023.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    
    var body: some View {
        
        ZStack {
           
            //Image("Wallpaper 3").ignoresSafeArea(.all)
            Chart {
                
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    BarMark(x: .value("Day ", "June 1"), y:.value("Value", 50))
                }
               
                
                        
                
            }// chart
            .foregroundStyle(.linearGradient(colors:[.red, .blue], startPoint: .top, endPoint: .bottom))
            .frame(height: 300)
                
            
            
        }// Zstack
        
        
    
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}

struct Value : Identifiable{
    var id = UUID()
    var day : String
    var value : Double
    
}

let data = [
    Value(day: "June 5", value: 20.00),
    Value(day: "June 5", value: 20.00),
    Value(day: "June 5", value: 20.00),
    Value(day: "June 5", value: 20.00),
    Value(day: "June 5", value: 20.00),
]
