//
//  ContentView.swift
//  SwiftUITrafficLight
//
//  Created by Dmitriy Ryndya on 24.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonName = "NEXT"
    var body: some View {
        VStack {
            LightCircle(lightColor: .red)
            LightCircle(lightColor: .yellow)
            LightCircle(lightColor: .green)
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("START")
                    .fontWeight(.bold)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .frame(width: 150, height: 100)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
