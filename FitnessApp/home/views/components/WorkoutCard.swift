//
//  WorkoutCard.swift
//  FitnessApp
//
//  Created by Lê Hậu on 22/2/25.
//
import SwiftUI

struct WorkoutCard: View{
    @State var workout: Workout
    var body: some View{
        HStack{
            Image(systemName: workout.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .foregroundStyle(workout.tintColor)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
            VStack(spacing: 8){
                HStack{
                    Text(workout.title)
                        .font(.title3)
                        .bold()
                    Spacer()
                    Text(workout.duration)
                }
                HStack{
                    Text(workout.date,format: Date.FormatStyle().day().month().year())
                    Spacer()
                    Text(workout.calories)
                }
            }
        }
    }
}

#Preview {
    WorkoutCard(workout: Workout(title: "Running", image: "figure.run", date: Date.now, tintColor: .green, duration: "51 mins", calories: "1231 kcal"))
}
