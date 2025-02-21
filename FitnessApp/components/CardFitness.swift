//
//  CardFitness.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct CardFitness: View {
    var body: some View {
        HStack{
            VStack(spacing: 8){
                    VStack(alignment: .leading, spacing: 8){
                        Text("Calories")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.red)
                        Text("123 kcal")
                            .bold()
                    }
                    VStack(alignment: .leading, spacing: 8){
                        Text("Active")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.green)
                        Text("52 mins")
                            .bold()
                    }
                    VStack(alignment: .leading, spacing: 8){
                        Text("Stand")
                            .font(.callout)
                            .bold()
                            .foregroundStyle(.blue)
                        Text("8 hours")
                            .bold()
                    }
                }
        }
    }
}

#Preview {
    CardFitness()
}
