//
//  GridView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 26/02/2023.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        
        Grid(alignment: .leading, horizontalSpacing: 12,verticalSpacing: 12){
            GridRow{
            
                Text("Votes")
                    .gridColumnAlignment(.trailing)
                    .gridCellColumns(2)
                //Text("Percentage")
                Text("Rating")
                
            }//GridRow1
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
            
                Text("4")
                ProgressView(value: 0.3)
                    .frame(maxWidth: 250)
                Image(systemName: "star")
                
            }//GridRow1
            GridRow{
            
                Text("4")
                ProgressView(value: 0.3)
                Image(systemName: "star")
                
            }//GridRow3
        }// Grid
        .padding(20)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
