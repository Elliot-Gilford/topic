//
//  NoteTestUIApp.swift
//  NoteTestUI
//
//  Created by Elliot on 2023-05-27.
//

import SwiftUI
import Firebase
import GoogleSignIn

class AuthViewModel: ObservableObject {
    func signInWithGoogle() {
        // Google Sign-In configuration and process...
        // Firebase authentication with Google token...
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct NoteTestUIApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
    }
}
