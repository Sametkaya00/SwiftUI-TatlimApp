//
//  HomeView.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//



import SwiftUI
///ANASAYFA
struct HomeView: View {
    
    
    
       var body: some View {
           
           TabView {
               NavigationView {
                   VStack {
                       Rectangle()
                           .cornerRadius(20)
                           .edgesIgnoringSafeArea(.all)
                           .foregroundStyle(.cyan.opacity(0.7))
                           .frame(height:100)
                           .overlay {
                               HStack {
                                   VStack {
                                       Text("Merhaba Tatlım")
                                           .foregroundStyle(.white)
                                           .font(Font.system(size: 30))
                                           .bold()
                                       
                                       Text("Lezettli bir tatlı yapmaya ne dersin?")
                                           .foregroundStyle(.white)
                                           .font(.subheadline)
                                           .bold()
                                   }
                                   .padding(.bottom,20)
                               }
                             
                          
                           }
                       //favori başlangıc
                         
                       //favori bitiş
                       VStack {
                           NavigationLink(destination: SearchView()) {
                               HStack {
                                   Image(systemName: "magnifyingglass")
                                       .foregroundColor(.gray)
                                   Text("Canın bugün ne çekti bakim ?              ")
                                       .padding()
                                       .background(Color.gray.opacity(0.2))
                                       .cornerRadius(15)
                                       .foregroundStyle(.gray)
                               }
                           }
                           .padding()
                       }
                       .padding()
                       
                       HomeCategoryView()
                   }
               }
               .tabItem {
                   Label("Ana Sayfa", systemImage: "house")
               }
             
              
            
               NavigationView {
                   SearchView()
                       
                   Spacer()
               }
               .tabItem {
                   Label("Arama", systemImage: "magnifyingglass")
                 
               }
                  
               NavigationView {
                   ProfileView()
                       .navigationBarTitle("Profil")
                     
               }
               .tabItem {
                   Label("Profil", systemImage: "person.circle")
               }
           }
       }
    
   }

            
            
            
   struct HomeView_Previews: PreviewProvider {
       static var previews: some View {
           HomeView()
       }
   }
