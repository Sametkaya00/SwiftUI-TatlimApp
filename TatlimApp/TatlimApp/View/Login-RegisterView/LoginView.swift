//
//  LoginView.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
  
    var body: some View {
        struct SlantedClip: Shape {
            func path(in rect: CGRect) -> Path {
                var path = Path()
                path.move(to: CGPoint(x: rect.minX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
                path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                path.addLine(to: CGPoint(x: rect.minX + rect.width * 0.7, y: rect.maxY))
                path.closeSubpath()
                return path
            }
        }
        return NavigationStack{
            VStack{
                           GeometryReader { geometry in
                               ZStack {
                                   Image("b")
                                       .resizable()
                                       .aspectRatio(contentMode: .fill)
                                       .frame(width: geometry.size.width, height: geometry.size.height)
                                       .clipShape(SlantedClip())
                                       .edgesIgnoringSafeArea(.all)
                                   Text("Hoşgeldin Tatlım")
                                       .font(Font.system(size: 40))
                                       .bold()
                                       .foregroundStyle(.brown.opacity(0.8))
                                       .rotationEffect(.degrees(58))
                                       .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.3)
                                       .offset(x: -geometry.size.width * 0.240, y: geometry.size.height * 0.00)
                               }
                           }
                       }
           
            VStack(spacing:15){
                
              
               
                    
                if(!viewModel.errorMassega.isEmpty){
                    Text(viewModel.errorMassega)
                        .foregroundStyle(.red)
                }
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
                    
                
                  
                }
              
            
                
            Button(action: {viewModel.login()}, label: {
                    Text("Giriş yap")
                        .foregroundStyle(.white)
                        .frame(width: 280)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(8)
                       
                        
                })
            .padding(.bottom,80)
            VStack{
                
                Rectangle()
               
                    .frame(width: 350,height: 1)
               
                    .foregroundStyle(.gray.opacity(0.6))
                  
                }
           
             HStack{
             Text("Buralarda yeni misin ? | ")
             
            NavigationLink("Kayıt ol",destination: RegisterView())
                
             }
            
        }
    }
}
      



#Preview {
    LoginView()
}
