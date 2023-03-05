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
                
                ForEach(data) { item in
                    LineMark(x: .value("Day ", item.day), y:.value("Value", item.value), series: .value("Year", "2023"))
                }// foreach
                .cornerRadius(12)
                .interpolationMethod(.catmullRom)
                .foregroundStyle(.yellow)
                .symbol(by: .value("Year", "2023"))
                ForEach(data2) { item in
                    LineMark(x: .value("Day ", item.day), y:.value("Value", item.value), series: .value("Year", "2022"))
                }// foreach
                .cornerRadius(12)
                .interpolationMethod(.catmullRom)
                .symbol(by: .value("Year", "2022"))
                
                        
                
            }// chart
            //.foregroundStyle(.linearGradient(colors:[.yellow, .blue], startPoint: .top, endPoint: .bottom))
            .frame(height: 300)
            .padding(20)
                
            
            
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
    Value(day: "June 7", value: 40.00),
    Value(day: "June 9", value: 15.00),
    Value(day: "June 10", value: 50.00),
    Value(day: "June 12", value: 7.00),
]
let data2 = [
    Value(day: "June 5", value: 90.00),
    Value(day: "June 7", value: 45.00),
    Value(day: "June 9", value: 35.00),
    Value(day: "June 10", value: 12.00),
    Value(day: "June 12", value: 32.00),
]
