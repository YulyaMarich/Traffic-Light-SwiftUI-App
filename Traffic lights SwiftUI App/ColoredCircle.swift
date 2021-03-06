//
//  RedCircle.swift
//  Traffic lights SwiftUI App
//
//  Created by Julia on 20.02.2022.
//

import SwiftUI

struct ColoredCircle: View {
    var opacity: Double
    var color: UIColor
    
    var body: some View {
        Color(color)
            .opacity(opacity)
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColoredCircle(opacity: 0.4, color: .red)
    }
}
