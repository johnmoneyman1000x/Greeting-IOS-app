//
//  GreetingsApp.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import SwiftUI
import TipKit

@main
struct GreetingsApp: App {
//    @State private var language: String = "en"
//    @State private var languageDirectionString: String = LEFT_TO_RIGHT
    // don't use large storage for data storage
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    
    // persist with app storage but app storage does not store layoutDirection, but it does know how to store a string
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $languageDirectionString)
            
            // this line below will change the lang
                .environment(\.locale, Locale(identifier: language))
            
            // thid will change the direction
                .environment(\.layoutDirection, layoutDirection)
            
                .task {
                    try? Tips.resetDatastore()
                      // Configure and load your tips at app launch.
                      do {
                          try Tips.configure([
                              .displayFrequency(.immediate),
                              .datastoreLocation(.applicationDefault)
                          ])
                      }
                      catch {
                          // Handle TipKit errors
                          print("Error initializing TipKit \(error.localizedDescription)")
                      }
                  }
        }
    }
}
