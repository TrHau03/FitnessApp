//
//  ActivityCard.swift
//  FitnessApp
//
//  Created by Lê Hậu on 21/2/25.
//

import SwiftUI

struct ActivityCard: View {
    @State var activity: Activity
    var body: some View {
        ZStack{
            Color(uiColor: .systemGray6)
                .cornerRadius(20)
            VStack{
                HStack{
                    VStack(alignment: .leading){
                        Text(activity.title)
                        Text(activity.subtitle)
                    }
                    Spacer()
                    Image(systemName: activity.image)
                        .foregroundStyle(activity.tintColor)
                }
                Text("\(activity.amount)")
                    .font(.title)
                    .bold()
                    .padding()
            }
            .padding()
        }
    }
}

#Preview {
    ActivityCard(activity: Activity(title: "Total step", subtitle: "goal 10,000", image: "flame", tintColor: .red, amount: "10000"))
}
