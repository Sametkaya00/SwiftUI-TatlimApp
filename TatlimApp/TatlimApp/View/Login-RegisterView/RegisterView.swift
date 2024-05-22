//
//  RegisterView.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewModel()
    
     var body: some View {
         NavigationView {
             VStack(spacing:20){
                 Text("Kayıt Ol")
                     .font(Font.system(size: 30))
                     .foregroundStyle(.brown.opacity(0.8))
                     .bold()
                     .position(x:80,y:170)
                 
                 if(!viewModel.errorMassege.isEmpty){
                     Text(viewModel.errorMassege)
                         .foregroundStyle(.red)
                 }
                 
                 TextField("İsim",text: $viewModel.name)
                     .padding()
                     .background(Color.gray.opacity(0.2))
                     .cornerRadius(10)
                     .frame(width: 350)
                 
                 TextField("Mail",text: $viewModel.email)
                     .padding()
                     .background(Color.gray.opacity(0.2))
                     .cornerRadius(10)
                     .frame(width: 350)
                 
                 SecureField("Şifre",text: $viewModel.password)
                     .padding()
                     .background(Color.gray.opacity(0.2))
                     .cornerRadius(10)
                     .frame(width: 350)
                     .padding(.bottom,30)
                 
                 Button(action: {viewModel.register()}, label: {
                     Text("Kayıt ol")
                         .foregroundStyle(.white)
                         .frame(width: 280)
                         .padding()
                         .background(Color.orange)
                         .cornerRadius(8)
                 })
                 
               
                 .padding(.bottom,150)
             }
           
         }
     }
 }



#Preview {
    RegisterView()
}
