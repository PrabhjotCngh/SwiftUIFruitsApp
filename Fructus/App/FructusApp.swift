//
//  FructusApp.swift
//  Fructus
//
//  Created by M_2195552 on 2023-05-24.
//

import SwiftUI

@main
struct FructusApp: App {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    //MARK: - Body
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
