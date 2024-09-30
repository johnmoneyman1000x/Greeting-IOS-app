//
//  TitleView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import SwiftUI
import TipKit

/// This is the title view of the app which display a title, subtitle
/// which randomly changes on tap and
/// colorful disk that rotates

struct TitleView: View {
    
    
    @State private var subtitle:
    LocalizedStringKey = "Exploring iOS Programming"
    
    private var greetingsTip = GreetingsTip()
    

    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(greetingsTip)
            
            Spacer()
            
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack{
        TitleView()
        Spacer()
    }

        .padding()
}
