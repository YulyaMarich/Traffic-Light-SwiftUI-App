//
//  RedCircle.swift
//  Traffic lights SwiftUI App
//
//  Created by Julia on 20.02.2022.
//

import SwiftUI

struct RedCircle: View {
    var opacity: Double
    
    static var shared = RedCircle(opacity: 0.4)
    
    var body: some View {
        Color(.red)
            .opacity(opacity)
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        RedCircle(opacity: 0.4)
    }
}
