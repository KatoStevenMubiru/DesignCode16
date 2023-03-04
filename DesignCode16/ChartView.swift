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
            Image("Wallpaper 3")
            Chart {
                
                BarMark(x: .value("Day ", "June 1"), y:.value("Value", 50))
                        
                BarMark(x: .value("Day ", "June 2"), y:.value("Value", 30))
                        
                
            }// chart
                
            
            
        }// Zstack
    
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
