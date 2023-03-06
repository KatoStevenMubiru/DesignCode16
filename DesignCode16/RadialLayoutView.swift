//
//  RadialLayoutView.swift
//  DesignCode16
//
//  Created by Kato Steven Mubiru on 06/03/2023.
//

import SwiftUI

struct RadialLayoutView: View {
    var body: some View {
        Circle()
            .frame(width: 44)
            .overlay {
                Image(systemName: "calendar").foregroundColor(.white)
            }
        
    }
}

struct RadialLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        RadialLayoutView()
    }
}
