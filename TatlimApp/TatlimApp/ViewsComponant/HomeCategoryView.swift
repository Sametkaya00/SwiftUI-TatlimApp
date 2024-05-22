//
//  KatagoriView.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import SwiftUI

struct HomeCategoryView: View {
    
    @State private var favoritedTatlilar: Set<UUID> = {
          guard let favoritedTatlilarStringArray = UserDefaults.standard.stringArray(forKey: "favoritedTatlilar") else {
              return []
          }
          return Set(favoritedTatlilarStringArray.compactMap { UUID(uuidString: $0) })
      }()
      
      @State private var showingFavoriler = false
    var body: some View {
      
             ScrollView {
                 VStack(spacing: 20) {
                     NavigationLink(
                        destination: MilkDessertView(),
                         label: {
                             ZStack {
                                 Image("sutlac")
                                     .resizable()
                                     .aspectRatio(contentMode: .fill)
                                     .frame(maxWidth: .infinity, maxHeight: 140)
                                     .cornerRadius(10)
                                     
                                     .overlay(
                                         Text("Sütlü Tatlılar")
                                             .foregroundColor(.white)
                                             .bold()
                                             .font(Font.system(size: 35))
                                             .padding(10),
                                         alignment: .bottomLeading
                                     )
                                     .contentShape(Rectangle()) // Tıklanabilir alanı genişletir
                             }
                         }
                     )
                     
                     NavigationLink(
                         destination: ChocolateDessertsView(),
                         label: {
                             ZStack {
                                 Image("cikilata")
                                     .resizable()
                                     .aspectRatio(contentMode: .fill)
                                     .frame(maxWidth: .infinity, maxHeight: 140)
                                     .cornerRadius(10)
                                     .overlay(
                                         Text("Çikolatalı Tatlılar")
                                             .foregroundColor(.white)
                                             .bold()
                                             .font(Font.system(size: 35))
                                             .padding(10),
                                         alignment: .bottomLeading
                                     )
                                     .contentShape(Rectangle()) // Tıklanabilir alanı genişletir
                             }
                         }
                     )
                     
                     NavigationLink(
                         destination: SherbetDessertsView(),
                         label: {
                             ZStack {
                                 Image("baklavaki")
                                     .resizable()
                                     .aspectRatio(contentMode: .fill)
                                     .frame(maxWidth: .infinity, maxHeight: 140)
                                     .cornerRadius(10)
                                     
                                     .overlay(
                                         Text("Şerbetli Tatlılar")
                                             .foregroundColor(.white)
                                             .bold()
                                             .font(Font.system(size: 35))
                                             .padding(10),
                                         alignment: .bottomLeading
                                     )
                                     .contentShape(Rectangle()) // Tıklanabilir alanı genişletir
                                 
                             }
                         }
                     )
                     
                     NavigationLink(
                         destination: HealthDessertView(),
                         label: {
                             ZStack {
                                 Image("min")
                                     .resizable()
                                     .aspectRatio(contentMode: .fill)
                                     .frame(maxWidth: .infinity, maxHeight: 140)
                                     .cornerRadius(10)
                                     
                                     .overlay(
                                         Text("Sağlıklı, Diyet Tatlılar")
                                             .foregroundColor(.white)
                                             .bold()
                                             .font(Font.system(size: 35))
                                             .padding(10),
                                         alignment: .bottomLeading
                                     )
                                     .contentShape(Rectangle()) // Tıklanabilir alanı genişletir
                             }
                         }
                     )
                     
                     
                     NavigationLink(
                         destination: VeganDessertView(),
                         label: {
                             ZStack {
                                 Image("max")
                                     .resizable()
                                     .aspectRatio(contentMode: .fill)
                                     .frame(maxWidth: .infinity, maxHeight: 140)
                                     .cornerRadius(10)
                                     
                                     .overlay(
                                         Text("Vegan Tatlılar")
                                             .foregroundColor(.white)
                                             .bold()
                                             .font(Font.system(size: 35))
                                             .padding(10),
                                         alignment: .bottomLeading
                                     )
                                     .contentShape(Rectangle()) // Tıklanabilir alanı genişletir
                             }
                         }
                     )
                 }
                 
             }
        
             .padding()
         }
        
    }


#Preview {
    HomeCategoryView()
}
