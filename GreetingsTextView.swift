//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

import SwiftUI

struct GreetingsTextView: View {
    
    // state var change through binding
    @Binding var subtitle: LocalizedStringKey
    
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS programming",
        "Learning how to bake",
        "Programming receipes",
        "A quest for knowledge"
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                
                // change caption
                subtitle = subtitles
                //.randomElement()! force unwrapping is really bad
                    .randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
            }
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring IOS programming"))
}
