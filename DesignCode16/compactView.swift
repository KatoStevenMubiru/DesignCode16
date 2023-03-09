//
//  compactView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 09/03/2023.
//

import SwiftUI

struct compactView: View {
         
    var body: some View {
        
        RadialGradient(colors: [Color(#colorLiteral(red: 0.2980392157, green: 0.3058823529, blue: 0.4431372549, alpha: 1)), .black], center: .center, startRadius: 1, endRadius: 400)
    }
}

struct compactView_Previews: PreviewProvider {
    static var previews: some View {
        compactView()
    }
}
