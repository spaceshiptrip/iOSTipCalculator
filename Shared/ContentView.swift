//
//  ContentView.swift
//  Shared
//
//  Created by Jay J Torres on 11/28/20.
//

import SwiftUI

struct ContentView: View {
    @State var total = "20"
    @State var tipPercent: Double=15.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(.title)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.black, width: 0.25)
                
            }
            .padding()
            
            HStack {
                Slider (value: $tipPercent, in: 1...30, step: 1.0)
                Text("\(Int(tipPercent))")
            }
                

            if let totalNum = Double(total) {
                Text("Tip Amount $\(totalNum * tipPercent / 100.0, specifier: "%0.2f")")
                    .font(.largeTitle)
            } else {
                Text("Please enter a valid numerical value.")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
