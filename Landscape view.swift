//
//  Landscape view.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

import SwiftUI

struct Landscape_view: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            HStack {
                // Title
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                

                
                
            }
            .padding()
        }
    }
}

#Preview {
    Landscape_view()
}
