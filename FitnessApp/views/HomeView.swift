//
//  HomeView.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("Welcome")
                .font(.title)
                .bold()
            HStack{
                CardFitness()
                Spacer()
                ZStack{
                    ProgressCircle(value: 10, size: 20,color: .red)
                    ProgressCircle(value: 10, size: 20,color: .green)
                        .padding(.all,20)
                    ProgressCircle(value: 10, size: 20,color: .blue)
                        .padding(.all,40)
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    HomeView()
}
