//
//  OnboardingManager.swift
//  OnboardingScreens
//
//  Created by Emrè Barish on 27/05/2024.
//

import SwiftUI

// MARK: Models

enum OnboardingType {
    case welcome
    case whatsNew
    
    var storageKey: String {
        switch self {
        case .welcome: return "welcomeScreenNeeded"
        case .whatsNew: return "whatsNewScreenNeeded-1.0"
        }
    }
    
    var title: String {
        switch self {
        case .welcome: return "Welcome to\nMy App"
        case .whatsNew: return "What's New\nin My App"
        }
    }
    
    var features: [OnboardingFeature] {
        switch self {
        case .welcome: return OnboardingData.welcomeFeatures
        case .whatsNew: return OnboardingData.whatsNewFeatures
        }
    }
}

struct OnboardingFeature: Identifiable {
    let id = UUID()
    let header: String
    let description: String
    let iconName: String
    let iconColor: Color
}

// MARK: - Data

enum OnboardingData {
    
    // MARK: `Welcome` screen features.
    
    /// All `Welcome` screen features.
    static let welcomeFeatures: [OnboardingFeature] = [firstWelcomeFeature, secondWelcomeFeature, thirdWelcomeFeature]
    
    /// First feature details.
    static let firstWelcomeFeature = OnboardingFeature(
        header: "First Welcome Feature Title",
        description: "First `welcome` feature description. The description can be multiple lines long.",
        iconName: "1.square",
        iconColor: .red
    )
    
    /// Second feature details.
    static let secondWelcomeFeature = OnboardingFeature(
        header: "Second Welcome Feature Title",
        description: "Second `welcome` feature description. The description can be multiple lines long. This sample sentence makes the description longer.",
        iconName: "2.square",
        iconColor: .green
    )
    
    /// Third feature details.
    static let thirdWelcomeFeature = OnboardingFeature(
        header: "Third Welcome Feature Title",
        description: "Third `welcome` feature description. The description can be multiple lines long. This sample sentence makes the description even longer.",
        iconName: "3.square",
        iconColor: .cyan
    )
    
    // MARK: `What's New` screen features.
    
    /// All `What's New` screen features.
    static let whatsNewFeatures: [OnboardingFeature] = [firstWhatsNewFeature, secondWhatsNewFeature, thirdWhatsNewFeature]
    
    /// First feature details.
    static let firstWhatsNewFeature = OnboardingFeature(
        header: "First What's New Feature Title",
        description: "First `what's new` feature description. The description can be multiple lines long.",
        iconName: "1.square",
        iconColor: .red
    )
    
    /// Second feature details.
    static let secondWhatsNewFeature = OnboardingFeature(
        header: "Second What's New Feature Title",
        description: "Second `what's new` feature description. The description can be multiple lines long. This sample sentence makes the description longer.",
        iconName: "2.square",
        iconColor: .green
    )
    
    /// Third feature details.
    static let thirdWhatsNewFeature = OnboardingFeature(
        header: "Third What's New Feature Title",
        description: "Third `what's new` feature description. The description can be multiple lines long. This sample sentence makes the description even longer.",
        iconName: "3.square",
        iconColor: .cyan
    )
}
