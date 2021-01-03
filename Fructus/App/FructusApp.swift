//
//  FructusApp.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 30.12.2020.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool=true
    var body: some Scene {
        WindowGroup {
            if(isOnboarding){
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
