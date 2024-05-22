//
//  SherbetRepiceVİew.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import SwiftUI

struct SherbetRepiceVİew: View {
    var body: some View {
        SherbetDetailView(tatli: SherbetDatabase[0])
                   
    }
}
struct SherbetDetailView: View {
    var tatli: Tatli
 
    var body: some View {
        ScrollView {
                  VStack(alignment: .leading, spacing: 20) {
                      Image(tatli.resimAdi)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .cornerRadius(10)
                          .padding(.horizontal)
                          .shadow(color:.black,radius: 10)
                          
                      
                      Text("Malzemeler")
                          .font(.title)
                          .fontWeight(.bold)
                          .padding(.horizontal)
                          .foregroundStyle(.brown)
                          
                      
                      VStack(alignment: .leading, spacing: 5) {
                          ForEach(0..<tatli.malzemeler.count, id: \.self) { index in
                              HStack {
                                  Text(tatli.malzemeler[index])
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
    SherbetRepiceVİew()
}
