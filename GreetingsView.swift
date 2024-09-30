//
//  ContentView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import SwiftUI
// Portrait = Compact width, regular height


struct GreetingsView: View {
    
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            VStack(alignment: .leading, spacing: 20) {
                // Title
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
                
                
            }
            .padding()
        }
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT))

        
}
