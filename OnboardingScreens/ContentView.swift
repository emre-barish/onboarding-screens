//
//  ContentView.swift
//  OnboardingScreens
//
//  Created by Emrè Barish on 26/05/2024.
//

import SwiftUI

struct ContentView: View {
    /*
     Onboarding settings to determine if `Welcome` or `What's New` screen
     will be displayed when the app is launched.
     
     Both variables cannot be `true` at the same time.
     */
    @AppStorage("OnboardingType.welcome.storageKey") private var showWelcomeScreen: Bool = true
    @AppStorage(OnboardingType.whatsNew.storageKey) private var showWhatsNewScreen: Bool = false
    
    var body: some View {
        Group {
            VStack {
                Image(systemName: "note.text")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("My App Content")
            }
            .padding()
        }
        .sheet(isPresented: $showWelcomeScreen) {
            OnboardingHome(onboardingType: .welcome)
        }
        .sheet(isPresented: $showWhatsNewScreen) {
            OnboardingHome(onboardingType: .whatsNew)
        }
    }
}

#Preview {
    ContentView()
}
