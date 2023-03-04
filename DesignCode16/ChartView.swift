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
            
            Chart{
                BarMark(x: <#T##PlottableValue<Plottable>#>, y: <#T##PlottableValue<Plottable>#>)
                
            }
            
        }// Zstack
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
