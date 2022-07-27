//
//  LightCircle.swift
//  SwiftUITrafficLight
//
//  Created by Dmitriy Ryndya on 24.07.2022.
//

import SwiftUI

struct LightCircle: View {
    let currentLight: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(currentLight)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct LightCircle_Previews: PreviewProvider {
    static var previews: some View {
        LightCircle(currentLight: .red, opacity: 0.3)
    }
}
