//
//  TatliRowView.swift
//  TatlimApp
//
//  Created by samet kaya on 13.05.2024.
//

import SwiftUI

struct TatliRowView: View {
    let tatli: Tatli
      let isFavorited: Bool
      @Binding var favoritedTatlilar: Set<UUID>
      
      var body: some View {
          HStack {
              Image(tatli.resimAdi)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .frame(width: 180, height: 140)
                  .cornerRadius(10)
                  .padding()
              VStack(alignment: .leading) {
                  Text(tatli.adi)
                      .font(.headline)
                      .foregroundColor(.black)
                  Text("\(tatli.kalori) Kalori")
                      .font(.subheadline)
                      .foregroundColor(.gray)
                  Text("\(tatli.sure) dk")
                      .font(.subheadline)
                      .foregroundColor(.gray)
              }
              Spacer()
              Button(action: {
                  if isFavorited {
                      favoritedTatlilar.remove(tatli.id)
                  } else {
                      favoritedTatlilar.insert(tatli.id)
                  }
                  
                  let favoritedTatlilarStringArray = favoritedTatlilar.map { $0.uuidString }
                  UserDefaults.standard.set(favoritedTatlilarStringArray, forKey: "favoritedTatlilar")
              }, label: {
                  Image(systemName: isFavorited ? "heart.fill" : "heart")
                      .foregroundColor(isFavorited ? .red : .gray)
                      .padding(.horizontal)
              })
              .buttonStyle(PlainButtonStyle())
          }
      }
  }

struct TatliRowView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleTatli = tatliVeritabani[0]
        let sampleIsFavorited = true
        let sampleFavoritedTatlilar: Set<UUID> = []
        
        return TatliRowView(tatli: sampleTatli, isFavorited: sampleIsFavorited, favoritedTatlilar: .constant(sampleFavoritedTatlilar))
    }
}
