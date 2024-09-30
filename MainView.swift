//
//  MainView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/29/24.
//

// Portrait = Compact width, regular height
// iPad = Regular width, regular height



import SwiftUI

struct MainView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            NavigationStack {
                GreetingsView()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                    }
            }
            
        } else {
            // Landscape mode
            NavigationStack {
                Landscape_view()
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing){
                            LanguageOptionsTapView(language: $language, layoutDirectionString: $layoutDirectionString)
                        }
                        
                    }
                
            }
            
        }
    }
    
}

    
    #Preview {
        MainView(
            language: .constant("en"),
            layoutDirectionString: .constant(LEFT_TO_RIGHT))
    }
    

