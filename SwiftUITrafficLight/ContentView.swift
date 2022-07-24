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
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(spacing: 20) {
                LightCircle(lightColor: .red)
                LightCircle(lightColor: .yellow)
                LightCircle(lightColor: .green)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("START")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                    
                }
                .padding(EdgeInsets(top: 15, leading: 50, bottom: 15, trailing: 50))
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(15)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
