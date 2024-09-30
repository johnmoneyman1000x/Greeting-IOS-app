//
//  TextView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import SwiftUI

struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                // randomly change color
                // color is immutable and need to be changed
                // the properties for struct are immutable by default
                // randomElement return color or no color, because list might be empty, it return nil
                // use ?? .red if random color return nil then use red
                //randomElement()! either return a color or no color force unwrapping, with ! the program will crash

                    color = colors.randomElement() ?? . red
        
                
            }
    }
}

#Preview {
    VStack(spacing: 20){
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hello there!", color: .blue)
        TextView(text: "Hello there!", color: .purple)
    }
}
