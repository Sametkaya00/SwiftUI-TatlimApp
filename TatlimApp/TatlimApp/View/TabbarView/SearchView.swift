//
//  SearchVİew.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import SwiftUI

struct SearchView: View {
    @State var search = ""
    
         
       var desserts: [Tatli] {
           if search.isEmpty {
               return []
           } else {
               let milkResults = Tatli.search(for: search)
               let chocolataResults = ChocolataDesser.search(for: search)
               let sherbatResults = SherbetDesser.search(for: search)
               let veganResults = VeganRecipe.search(for: search)
               return (milkResults + chocolataResults + sherbatResults + veganResults).sorted { $0.adi < $1.adi }
           }
       }
         
       var body: some View {
           NavigationView {
               VStack {
                   HStack {
                       Image(systemName: "magnifyingglass")
                           .foregroundColor(.gray)
                       TextField("Canın ne çekti bakim ?", text: $search)
                           .padding()
                           .background(Color.gray.opacity(0.2))
                           .cornerRadius(15)
                   }
                   .padding()
                   
                  
                   
                   List {
                       ForEach(desserts) { dessert in
                           NavigationLink(destination: TatliDetailView(tatli: dessert)) {
                               HStack {
                                   Image(dessert.resimAdi)
                                       .resizable()
                                       .aspectRatio(contentMode: .fill)
                                       .frame(width: 130, height: 100)
                                       .cornerRadius(10)
                                       .padding()
                                   VStack(alignment: .leading) {
                                       Text(dessert.adi)
                                           .font(.headline)
                                           .foregroundColor(.black)
                                       Text("\(dessert.kalori) Kalori")
                                           .font(.subheadline)
                                           .foregroundColor(.gray)
                                       Text("\(dessert.sure) dk")
                                           .font(.subheadline)
                                           .foregroundColor(.gray)
                                   }
                                   Spacer()
                               }
                           }
                          
                           .contentShape(Rectangle()) // Tıklama alanını genişletme
                       }
                   }
                   
                   if desserts.isEmpty && !search.isEmpty {
                       Text("Üzgünüm, bu tarif bulunamadı")
                           .foregroundColor(.gray)
                   }
                   
                  
               }
               .navigationTitle("Tatlı Ara")
               .font(.headline)
           }
       }
   }

   struct SearchView_Previews: PreviewProvider {
       static var previews: some View {
           SearchView()
       }
   }
