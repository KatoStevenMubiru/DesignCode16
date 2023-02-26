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
                    .gridColumnAlignment(.trailing)
            }//GridRow1
            .font(.footnote)
            .foregroundColor(.secondary)
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            GridRow{
            
                Text("4")
                ProgressView(value: 0.3)
                    .frame(maxWidth: 250)
                RatingView(rating: 2)
                
            }//GridRow1
            
            GridRow{
            
                Text("40")
                ProgressView(value: 0.7)
                    .frame(maxWidth: 250)
               RatingView(rating: 4)
                
            }//GridRow2
            GridRow{
            
                Text("44")
                ProgressView(value: 0.7)
                    .frame(maxWidth: 250)
               RatingView(rating: 3)
                
            }//GridRow3
            GridRow{
            
                Text("15")
                ProgressView(value: 0.3)
                    .frame(maxWidth: 250)
               RatingView(rating: 5)
                
            }//GridRow4
            GridRow{
            
                Text("20")
                ProgressView(value: 0.4)
                    .frame(maxWidth: 250)
               RatingView(rating: 1)
                
            }//GridRow5
        }// Grid
        .padding(20)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
struct RatingView: View{
    var rating = 3
    let list = [1, 2, 3, 4, 5]
    var body: some View{
        
        HStack(spacing : 0) {
            ForEach(list, id: \.self) { item in
                Image(systemName: rating >= item ? "star.fill" : "star")
            }
        }
    }
    
}
