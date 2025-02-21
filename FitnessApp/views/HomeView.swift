//
//  HomeView.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct HomeView: View {
    var mocData = [
        Activity(title: "Total step", subtitle: "Gold 10,000", image: "figure.walk", tintColor:.red, amount: "3200"),
        Activity(title: "Total step", subtitle: "Gold 1,000", image: "figure.walk", tintColor:.blue, amount: "7200"),
        Activity(title: "Total step", subtitle: "Gold 20,000", image: "figure.walk", tintColor:.green, amount: "3300"),
        Activity(title: "Total step", subtitle: "Gold 30,000", image: "figure.walk", tintColor:.gray, amount: "6200")
    ]
    var body: some View {
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
                Button(action: {
                    print("show more")
                }, label: {
                    Text("Show more")
                        .padding(.all,10)
                        .font(.callout)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .cornerRadius(20)
                })
            }
            LazyVGrid(columns: Array(repeating: GridItem(spacing: 20), count:2)){
                ForEach(mocData, id: \.id){activity in
                    ActivityCard(activity: activity)
                }
            }
            Spacer()
        }
        .padding(.horizontal)
    }
}

#Preview {
    HomeView()
}
