//
//  GreenCircle.swift
//  Traffic lights SwiftUI App
//
//  Created by Julia on 20.02.2022.
//

import SwiftUI

struct GreenCircle: View {
    var opacity: Double
    
    static var shared = GreenCircle(opacity: 0.4)
    
    var body: some View {
        Color(.green)
            .frame(width: 140, height: 140)
            .opacity(opacity)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct GreenCircle_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircle(opacity: 0.4)
    }
}
