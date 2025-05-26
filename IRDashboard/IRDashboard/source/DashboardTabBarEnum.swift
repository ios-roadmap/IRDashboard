//
//  DashboardTabBarEnum.swift
//  IRDashboard
//
//  Created by Ömer Faruk Öztürk on 25.05.2025.
//

import SwiftUI
internal import IRStyleKit
internal import IRProfile

enum DashboardTabBarEnum: String, CaseIterable, TabBarRepresentable {
    case explore, chats, profile

    var id: String { rawValue }

    var title: String {
        switch self {
        case .explore: return "Explore"
        case .chats:   return "Chats"
        case .profile: return "Profile"
        }
    }

    var systemImage: String? {
        switch self {
        case .explore: return "eyes"
        case .chats:   return "bubble.left.and.bubble.right.fill"
        case .profile: return "person.fill"
        }
    }

    typealias Content = AnyView

    var content: AnyView {
        switch self {
        case .explore: return AnyView(Text("Explore"))
        case .chats:   return AnyView(Text("Chat"))
        case .profile: return AnyView(ProfileView())
        }
    }
}
