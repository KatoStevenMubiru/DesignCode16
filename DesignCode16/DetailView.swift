//
//  DetailView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 05/03/2023.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
       ScrollView{
            ViewThatFits {
              
                HStack(alignment: .top, spacing: 20) {
                  VStack {
                        ChartView()
                        CardView()
                       
                        
                  }//Vstack
              }//Hstack
              VStack {
                  ChartView()
                  CardView()
                  GridView()
                  
              }//Vstack
            }
        }//ViewThatFits
      
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
