//
//  FitnessTabview.swift
//  FitnessApp
//
//  Created by Lê Hậu on 20/2/25.
//

import SwiftUI

struct FitnessTabview: View {
    init(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.stackedLayoutAppearance.selected.iconColor = .blue
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.blue]
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
    var body: some View {
        TabView{
            Tab("Home", systemImage: "house"){
                HomeView()
            }
            Tab("Historic", systemImage: "chart.line.uptrend.xyaxis"){
                HistoricDataView()
            }
        }
    }
}

#Preview {
    FitnessTabview()
}
