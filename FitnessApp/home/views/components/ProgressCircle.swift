//
//  ProgressCircle.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct ProgressCircle: View {
    let value: CGFloat
    let size: CGFloat
    let color: Color
    private var progress: CGFloat {
        value / size
    }
    let width: CGFloat = 20
    var body: some View {
        ZStack{
            Circle()
                .stroke(color.opacity(0.3), lineWidth: width)
            Circle()
                .trim(from: 0, to: progress)
                .stroke(color, style: StrokeStyle(lineWidth: width, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .shadow(radius: 5)
        }
        .padding()
    }
}

#Preview {
    ProgressCircle(value: 5, size: 10,color: .red)
}
