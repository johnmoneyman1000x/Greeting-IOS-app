//
//  DataItemModal.swift
//  Greetings
//
//  Created by John Ming Yuk Ma on 9/27/24.
//

import Foundation

import SwiftUI
// conform to the identifiable protocol so that each struct will be uninque in some ways
struct DataItemModel: Identifiable {
    // UUID = unique user ID when we go over some struct
    // UUID generates a unique 128-bit value, ensuring each instance of DataItemModel has a unique identifier.

    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
