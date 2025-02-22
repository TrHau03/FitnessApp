//
//  Activity.swift
//  FitnessApp
//
//  Created by Lê Hậu on 21/2/25.
//

import SwiftUI

struct Activity: Identifiable {
    let id: UUID
    var title: String
    var subtitle: String
    var image: String
    var tintColor: Color
    var amount: String
    
    init(id: UUID = UUID(), title: String, subtitle: String, image: String, tintColor: Color, amount: String) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.tintColor = tintColor
        self.amount = amount
    }
}
