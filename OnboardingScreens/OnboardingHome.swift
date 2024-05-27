//
//  OnboardingHome.swift
//  OnboardingScreens
//
//  Created by Emrè Barish on 27/05/2024.
//

import SwiftUI

struct OnboardingHome: View {
    let onboardingType: OnboardingType
    
    var body: some View {
        VStack {
            VStack(spacing: 56) {
                Text(onboardingType.title)
                    .onboardingTitleStyle
                
                VStack(alignment: .leading, spacing: 35) {
                    ForEach(onboardingType.features) { feature in
                        OnboardingRow(feature: feature)
                    }
                }
            }
            .padding(.top, 84)
            
            Spacer()
            continueButton
        }
        .padding(.horizontal, 40.5)
    }
}

// MARK: - Subviews
extension OnboardingHome {
    var continueButton: some View {
        Button(action: {
            UserDefaults.standard.set(false, forKey: onboardingType.storageKey)
        }) {
            Label("Continue", systemImage: "")
                .labelStyle(ContinueButtonLabelStyle())
                .foregroundColor(.blue)
        }
        .padding(.top, 16)
        .padding(.bottom, 47)
    }
}

// MARK: - Styles

struct OnboardingTitleStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.largeTitle, weight: .bold))
            .lineSpacing(1)
            .multilineTextAlignment(.center)
            .fixedSize(horizontal: false, vertical: true)
    }
}

extension View {
    var onboardingTitleStyle: some View {
        self.modifier(OnboardingTitleStyle())
    }
}

struct ContinueButtonLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        Label(configuration)
            .labelStyle(.titleOnly)
            .font(.system(.callout, weight: .semibold))
            .foregroundColor(.white)
            .padding(13.5)
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(15)
    }
}

// MARK: - Previews

#Preview {
    OnboardingHome(onboardingType: .welcome)
        .previewLayout(.sizeThatFits)
}

#Preview {
    OnboardingHome(onboardingType: .whatsNew)
        .previewLayout(.sizeThatFits)
}
