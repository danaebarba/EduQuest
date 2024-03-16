//
//  Tabs.swift
//  EduQuest
//
//  Created by Danae Barba on 15/03/24.
//
import SwiftUI

enum Tab: String, CaseIterable{
    case topics = "Topics"
    case home = "Home"
    case rewards = "Rewards"
    case settings = "Settings"
    
    var symbol: String{
        switch self{
        case .topics:
            "list.bullet.circle"
        case .home:
            "house"
        case .rewards:
            "balloon.2"
        case .settings:
            "person.circle"
        }
    }
}

