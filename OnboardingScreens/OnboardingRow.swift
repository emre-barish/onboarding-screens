//
//  OnboardingRow.swift
//  OnboardingScreens
//
//  Created by Emrè Barish on 27/05/2024.
//

import SwiftUI

struct OnboardingRow: View {
    let feature: OnboardingFeature

    var body: some View {
        HStack(spacing: 14.5) {
            onboardingRowIcon
            VStack(alignment: .leading, spacing: 5) {
                onboardingRowHeader
                onboardingRowDescription
            }
            Spacer()
        }
    }
    
    var onboardingRowIcon: some View {
        Image(systemName: feature.iconName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 38, height: 38, alignment: .center)
            .foregroundColor(feature.iconColor)
    }
    
    var onboardingRowHeader: some View {
        Text(feature.header)
            .font(.system(.callout, weight: .medium))
            .fixedSize(horizontal: false, vertical: true)
    }
    
    var onboardingRowDescription: some View {
        Text(feature.description)
            .font(.system(.subheadline))
            .foregroundColor(.secondary)
            .lineSpacing(2)
            .fixedSize(horizontal: false, vertical: true)
    }
}

// MARK: - Previews

#Preview {
    VStack(spacing: 20) {
        OnboardingRow(feature: OnboardingData.firstWelcomeFeature)
        OnboardingRow(feature: OnboardingData.secondWelcomeFeature)
        OnboardingRow(feature: OnboardingData.thirdWelcomeFeature)
    }
    .previewLayout(.sizeThatFits)
}

#Preview {
    VStack(spacing: 20) {
        OnboardingRow(feature: OnboardingData.firstWhatsNewFeature)
        OnboardingRow(feature: OnboardingData.secondWhatsNewFeature)
        OnboardingRow(feature: OnboardingData.thirdWhatsNewFeature)
    }
    .previewLayout(.sizeThatFits)
}
