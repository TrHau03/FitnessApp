//
//  HomeView.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
        ScrollView(showsIndicators: false) {
                VStack{
                    Text("Welcome")
                        .font(.title)
                        .bold()
                    HStack{
                        FitnessCard()
                        Spacer()
                        ZStack{
                            ProgressCircle(value: 10, size: 20,color: .red)
                            ProgressCircle(value: 10, size: 20,color: .green)
                                .padding(.all,20)
                            ProgressCircle(value: 10, size: 20,color: .blue)
                                .padding(.all,40)
                        }
                    }
                    HStack{
                        Text("Fitness Activity")
                            .font(.title2)
                        Spacer()
                        NavigationLink{
                            EmptyView()
                        } label:{
                            Text("Show more")
                                .padding(.all,10)
                                .font(.callout)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count:2)){
                        ForEach(viewModel.mocData, id: \.id){activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    HStack{
                        Text("Recent workout")
                            .font(.title2)
                        Spacer()
                        NavigationLink{
                            EmptyView()
                        } label:{
                            Text("Show more")
                                .padding(.all,10)
                                .font(.callout)
                                .foregroundStyle(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.top)
                    LazyVStack{
                        ForEach(viewModel.mocWorkout,id: \.id){ workout in
                            WorkoutCard(workout: workout)
                        }
                    }
                    Spacer()
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    HomeView()
}
