//
//  ContentView.swift
//  Drawing
//
//  Created by Md. Masud Rana on 1/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var colorCycle = 0.0
    
    var body: some View {

        VStack {
            ColorCyclingCircle(amount: colorCycle)
            
            Slider(value: $colorCycle, in: 0...100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
