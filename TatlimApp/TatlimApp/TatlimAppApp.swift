//
//  TatlimAppApp.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import SwiftUI
import FirebaseCore

@main struct TatlimAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
