//
//  ContentView.swift
//  SwiftUITrafficLight
//
//  Created by Dmitriy Ryndya on 24.07.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}


struct ContentView: View {
    @State private var buttonName = "START"
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    @State private var light = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                LightCircle(currentLight: .red, opacity: redLightState)
                LightCircle(currentLight: .yellow, opacity: yellowLightState)
                LightCircle(currentLight: .green, opacity: greenLightState)
                Spacer()
                Button(action: {changeColor()}) {
                    Text(buttonName)
                        .fontWeight(.bold)
                        .font(.title)
                        .foregroundColor(.white)
                        
                }
                .buttonStyle(MainButton())
                
            }
        }
    }
    
    private func changeColor() {
        let lightON = 1.0
        let lightOff = 0.3
        
        switch light {
        case .red:
            buttonName = "NEXT"
            redLightState = lightON
            greenLightState = lightOff
            light = .yellow
        case .yellow:
            redLightState = lightOff
            yellowLightState = lightON
            light = .green
        case .green:
            yellowLightState = lightOff
            greenLightState = lightON
            light = .red
        }
    }
}



struct MainButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding(EdgeInsets(top: 15, leading: 50, bottom: 15, trailing: 50))
                .background(Color.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}









