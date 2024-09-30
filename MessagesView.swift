//
//  MessagesView.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import SwiftUI

struct MessagesView: View {
    // a list of array for data item models
    // put the messages into the data item modal
    // init initialize objects of a class, struct or enumeration , setting up the initial value
    // automatically called when creating an object and does not return a value
    // establish the object initial state
    let messages: [DataItemModel] = [
        .init(text: "Hello there!",
              color: .myGreen),
        .init(text: "Welcome to Swift programming",
              color: .myGray),
        .init(text: "Are you ready to",
              color: .myYellow),
        .init(text: "Start exploring?",
              color: .myRed),
        .init(text: "Boom",
              color: .myPurple)

    ]
    
    // dataItem represent message 0 to 4
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem
                    .color)
            }
        }
        
    }
}

#Preview {
    MessagesView()
}
