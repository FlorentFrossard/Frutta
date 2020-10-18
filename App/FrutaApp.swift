//
//  FrutaApp.swift
//  Fruta
//
//  Created by Florent on 12/10/2020.
//

import SwiftUI

@main
struct FrutaApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    // we use the app storage to make our onBoarding
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            } else {
                ContentView()
            }
        }
    }
}
