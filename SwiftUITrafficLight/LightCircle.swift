//
//  LightCircle.swift
//  SwiftUITrafficLight
//
//  Created by Dmitriy Ryndya on 24.07.2022.
//

import SwiftUI

struct LightCircle: View {
    var lightColor: Color
    var body: some View {
        Circle()
            .foregroundColor(lightColor)
            .frame(width: 100, height: 100)
    }
}

struct LightCircle_Previews: PreviewProvider {
    static var previews: some View {
        LightCircle(lightColor: .red)
    }
}
