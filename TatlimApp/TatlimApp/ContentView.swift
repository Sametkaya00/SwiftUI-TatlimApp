//
//  ContentView.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import SwiftUI

struct ContentView: View {
 @StateObject var viewMoedel=MainViewModel()
    
    var body: some View {
        if viewMoedel.isSignedIn, !viewMoedel.currenUserId.isEmpty {
            HomeView()
        }
        else{
            LoginView()
        }
    }
}

#Preview {
    ContentView()
}
