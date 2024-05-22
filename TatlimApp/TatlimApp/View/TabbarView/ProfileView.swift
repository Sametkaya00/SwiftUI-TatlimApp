//
//  ProfileView.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import SwiftUI

struct ProfileView: View {
  
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        NavigationView{
            VStack{
                
            if let user = viewModel.user{
                profile(user: user)
            }
            else{
                Text("profil yükleniyor...")
            }
           
            Button(action: {
                viewModel.logout()
            }, label: {
                Text("Çıkış yap")
                    .padding(.horizontal,40)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(10)
                
            })
               
            .padding(.top,50)
            
                HStack{
                    Rectangle()
                        .frame(width: 359,height: 0.5)
                    
                }
                .padding()
                Text("Eğer eklenmesini istediğiniz bi tarif varsa bize 'tatlimapp@gmail.com' adresinden bildirebilirsiniz. :)")
                    .font(.subheadline)
                
                HStack{
                    Rectangle()
                        .frame(width: 359,height: 0.4)
                    
                }
                .padding()
                
                Text("Uygulamamızda eksik gördüğünüz noktaları bize      'tatlimapp@gmail.com' adresinden bildirebilirsiniz.")
                    .font(.subheadline)
                    .padding()
                
                HStack{
                    Rectangle()
                        .frame(width: 359,height: 0.5)
                    
                }
                .padding()
               
        }
            
            .navigationTitle("Profil")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder func profile(user:User)-> some View{
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(.blue)
            .frame(width: 85,height: 85)
        VStack{
            HStack{
                Text(user.name)
            }
            HStack{
                Text(user.email)
            }
            
        }
    }
}
#Preview {
    ProfileView()
}
