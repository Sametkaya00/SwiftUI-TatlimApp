//
//  aa.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//
import SwiftUI

struct MİlkRepiceView: View {
   
    var body: some View {
        TatliDetailView(tatli: tatliVeritabani[0])
                   
    }
}
struct TatliDetailView: View {
    let tatli: Tatli
      
      var body: some View {
          ScrollView {
              VStack(alignment: .leading, spacing: 20) {
                  Image(tatli.resimAdi)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                      .cornerRadius(10)
                      .padding(.horizontal)
                      .shadow(color:.black,radius: 10)
                  
                  Text(tatli.adi)
                      .padding()
                      .font(Font.system(size: 35))
                      .foregroundColor(.tatliadicolor)
                      .bold()
                  
                  VStack(alignment: .leading, spacing: 5) {
                      Text("Malzemeler")
                          .font(.title)
                          .fontWeight(.bold)
                          .padding()
                          .foregroundStyle(.brown)
                      
                      ForEach(0..<tatli.malzemeler.count, id: \.self) { index in
                          HStack {
                              Text(tatli.malzemeler[index])
                                  .foregroundStyle(.black)
                                  .padding(.bottom,20)
                              Spacer()
                              Text(tatli.malzemelerGramajlari[index])
                          }
                          .padding(.horizontal)
                          .foregroundStyle(.gray)
                          .bold()
                      }
                  }
                  .background(.gray.opacity(0.1))
                  .cornerRadius(15)
                  
                  Text("Nasıl Yapılır ?")
                      .font(.title)
                      .fontWeight(.bold)
                      .padding(.horizontal)
                      .foregroundStyle(.brown)
                  
                  ForEach(0..<tatli.yapilisAdimlari.count, id: \.self) { index in
                      Text("\(index + 1). \(tatli.yapilisAdimlari[index])")
                          .padding(.horizontal)
                          .foregroundStyle(.gray)
                          .bold()
                  }
                  
                  VStack(alignment: .leading) {
                      Text("Kalori")
                          .font(.title)
                          .fontWeight(.bold)
                          .padding(.horizontal)
                          .foregroundStyle(.brown)
                      
                      HStack {
                          Image(systemName: "flame")
                          Text("\(tatli.kalori) Kalori")
                      }
                      .padding(.horizontal)
                      .foregroundStyle(.gray)
                      .bold()
                  }
                  
                  VStack(alignment: .leading){
                      Text("Besin Değerleri")
                          .font(.title)
                          .fontWeight(.bold)
                          .padding(.horizontal)
                          .foregroundStyle(.brown)
                      
                      ForEach(0..<tatli.BesinDegerleri.count, id: \.self) { index in
                          Text("\(tatli.BesinDegerleri[index])")
                              .padding(.horizontal)
                              .foregroundStyle(.gray)
                              .bold()
                      }
                      .foregroundStyle(.gray)
                      .bold()
                  }
              }
          }
          .navigationTitle(tatli.adi)
      }
  }


#Preview {
    MİlkRepiceView()
}
