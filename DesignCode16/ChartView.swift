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
                
                BarMark(x: .value("Day ", "June 1"), y:.value("Value", 50))
                        
                BarMark(x: .value("Day ", "June 2"), y:.value("Value", 30))
                  
                
                BarMark(x: .value("Day ", "June 3"), y:.value("Value", 20))
                   
                
                        
                
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
