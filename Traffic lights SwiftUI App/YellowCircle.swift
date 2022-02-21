//
//  YellowCircle.swift
//  Traffic lights SwiftUI App
//
//  Created by Julia on 20.02.2022.
//

import SwiftUI

struct YellowCircle: View {
    var opacity: Double
    
    static var shared = YellowCircle(opacity: 0.4)
    
    var body: some View {
        Color(.yellow)
            .opacity(opacity)
            .frame(width: 140, height: 140)
            .clipShape(Circle())
            .overlay(Circle().stroke(lineWidth: 4))
    }
}

struct YellowCircle_Previews: PreviewProvider {
    static var previews: some View {
        YellowCircle(opacity: 0.4)
    }
}
