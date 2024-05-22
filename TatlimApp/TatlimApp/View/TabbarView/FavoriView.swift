//
//  FavoriView.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import SwiftUI

struct FavoriView: View {
    
    @Binding var favoritedTatlilar: Set<UUID>
    
    var body: some View {
        if favoritedTatlilar.isEmpty {
            Text("Henüz favori tarif eklenmemiş")
                .foregroundColor(.red)
        } else {
            NavigationView {
                List {
                    ForEach(Array(favoritedTatlilar), id: \.self) { tatliID in
                        if let tatli = tatliVeritabani.first(where: { $0.id == tatliID }) {
                            NavigationLink(destination: TatliDetailView(tatli: tatli)) {
                                Text(tatli.adi)
                            }
                        } else if let tatli = ChocolataDatabase.first(where: { $0.id == tatliID }) {
                            NavigationLink(destination: ChocolataDetailView(tatli: tatli)) {
                                Text(tatli.adi)
                            }
                        } else if let tatli = SherbetDatabase.first(where: { $0.id == tatliID }) {
                            NavigationLink(destination: SherbetDetailView(tatli: tatli)) {
                                Text(tatli.adi)
                            }
                        } else if let tatli = VeganTatliDatabase.first(where: { $0.id == tatliID }) {
                            NavigationLink(destination: VeganDetailView(tatli: tatli)) {
                                Text(tatli.adi)
                            }
                        }
                    }
                }
            }
        }
    }
}
    

       
    
        
        
      
#Preview {
    FavoriView(favoritedTatlilar: .constant([]))
}

