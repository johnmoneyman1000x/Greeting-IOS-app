//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle:
    LocalizedStringKey = "Exploring iOS Programming"
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
            
            RotatableCircleView()
            
            Spacer()
        }
    }
}

#Preview {
    VerticalTitleView()
}
