//
//  ContentView.swift
//  Traffic lights SwiftUI App
//
//  Created by Julia on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var opacityRed = 0.4
    @State var opacityYellow = 0.4
    @State var opacityGreen = 0.4
    
    @State var buttonText = "START"
    
    var body: some View {
        VStack {
            ColoredCircle(opacity: opacityRed, color: .red)
            ColoredCircle(opacity: opacityYellow, color: .yellow)
            ColoredCircle(opacity: opacityGreen, color: .green)
                .padding()
            Spacer()
            Button(buttonText) {
                changeColor()
            }
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(Color.black)
    }
    
    func changeColor() {
        if opacityRed < 1 && opacityYellow < 1 && opacityGreen < 1  {
            opacityRed = 1
            buttonText = "NEXT"
        } else if opacityRed == 1.0 && opacityYellow < 1 && opacityGreen < 1 {
            opacityRed = 0.4
            opacityYellow = 1
        } else if opacityRed < 1 && opacityYellow == 1 && opacityGreen < 1 {
            opacityYellow = 0.4
            opacityGreen = 1
        } else if opacityRed < 1 && opacityYellow < 1 && opacityGreen == 1 {
            opacityGreen = 0.4
            opacityRed = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
