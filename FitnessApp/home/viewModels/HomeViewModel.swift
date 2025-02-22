//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Lê Hậu on 22/2/25.
//

import Foundation

class HomeViewModel:ObservableObject {
    var mocData = [
        Activity(title: "Total step", subtitle: "Gold 10,000", image: "figure.walk", tintColor:.red, amount: "3200"),
        Activity(title: "Total step", subtitle: "Gold 1,000", image: "figure.walk", tintColor:.blue, amount: "7200"),
        Activity(title: "Total step", subtitle: "Gold 20,000", image: "figure.walk", tintColor:.green, amount: "3300"),
        Activity(title: "Total step", subtitle: "Gold 30,000", image: "figure.walk", tintColor:.gray, amount: "6200")
    ]
    
    var mocWorkout = [
        Workout(title: "Running", image: "figure.run", date: .now, tintColor: .blue, duration: "10 mins", calories: "100 kcal"),
        Workout(title: "Walking", image: "figure.run", date: .now, tintColor: .green, duration: "30 mins", calories: "500 kcal"),
        Workout(title: "Running", image: "figure.run", date: .now, tintColor: .red, duration: "50 mins", calories: "200 kcal"),
        Workout(title: "Running", image: "figure.run", date: .now, tintColor: .blue, duration: "60 mins", calories: "300 kcal")
    ]
}
