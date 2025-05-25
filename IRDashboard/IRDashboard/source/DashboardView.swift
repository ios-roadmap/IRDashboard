//
//  DashboardView.swift
//  IRDashboard
//
//  Created by Ömer Faruk Öztürk on 25.05.2025.
//

import SwiftUI
internal import IRStyleKit

struct DashboardView: View {
    var body: some View {
        TabBarView(tabs: DashboardTabBarEnum.allCases)
    }
}

#Preview {
    DashboardView()
}
