//
//  VeganDessertsCatogory.swift
//  TatlimApp
//
//  Created by samet kaya on 15.05.2024.
//

import SwiftUI

struct VeganDessertsCatogory: View {
    @State private var favoritedTatlilar: Set<UUID> = {
          guard let favoritedTatlilarStringArray = UserDefaults.standard.stringArray(forKey: "favoritedTatlilar") else {
              return []
          }
          return Set(favoritedTatlilarStringArray.compactMap { UUID(uuidString: $0) })
      }()
      
      @State private var showingFavoriler = false
      
      var body: some View {
        
              ScrollView {
                  VStack {
                      ForEach(VeganTatliDatabase) { tatli in
                          NavigationLink(
                              destination: VeganDetailView(tatli: tatli),
                              label: {
                                  TatliRowView(tatli: tatli, isFavorited: favoritedTatlilar.contains(tatli.id), favoritedTatlilar: $favoritedTatlilar)
                              }
                          )
                      }
                  }
              }
            
              .navigationBarItems(trailing:
                  Button(action: {
                      showingFavoriler = true
                  }) {
                      Image(systemName: "heart.fill")
                          .foregroundStyle(.red)
                      Text("Favoriler")
                  }
              )
              .sheet(isPresented: $showingFavoriler) {
                  FavoriView(favoritedTatlilar: $favoritedTatlilar)
              }
          }
      }

#Preview {
    VeganDessertsCatogory()
}
