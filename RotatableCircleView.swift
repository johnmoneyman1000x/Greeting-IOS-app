//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    // state variable to change the degree
    @State private var isRotated: Bool = false
    
    // angle represent isRotated ? .zero : Angle(degrees: 360)
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    // set another variable called angularGradient
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.pink, .purple, .orange, .blue, .green, .red]), center: .center, angle: .zero)
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient,
                          lineWidth: 15)
        // if rotation is true, then .zero, otherwise use an angle of 360 degree
            .rotationEffect(angle)
            .frame(width: 70, height: 70)
            .onTapGesture {
                withAnimation {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
