//
//  compactView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 09/03/2023.
//

import SwiftUI

struct compactView: View {
    
     
    var body: some View {
        
        RadialGradient(colors: [Color("3B3C5E"), .black], center: .center, startRadius: 1, endRadius: 400)
    }
}

struct compactView_Previews: PreviewProvider {
    static var previews: some View {
        compactView()
    }
}
