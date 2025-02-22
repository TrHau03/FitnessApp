//
//  Workout.swift
//  FitnessApp
//
//  Created by Lê Hậu on 22/2/25.
//
import Foundation
import SwiftUI

struct Workout {
    let id:UUID
    var title: String
    var image: String
    var date: Date
    var tintColor: Color
    var duration: String
    var calories: String
    
    init(id: UUID =  UUID(), title: String, image: String, date: Date,tintColor: Color, duration: String, calories: String) {
        self.id = id
        self.title = title
        self.image = image
        self.date = date
        self.tintColor = tintColor
        self.duration = duration
        self.calories = calories
    }
}
