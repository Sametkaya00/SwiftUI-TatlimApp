//
//  SherbetDessertsView.swift
//  TatlimApp
//
//  Created by samet kaya on 1.05.2024.
//

import SwiftUI

struct SherbetDessertsView: View {
    var body: some View {
        
           
                VStack{
                    Rectangle()
                        .cornerRadius(20)
                        .edgesIgnoringSafeArea(.all)
                        .foregroundStyle(.baklavaki)
                        .frame(height:100)
                    
                    
                        .overlay{
                            HStack{
                                VStack{
                                    
                                    
                                    Text("Şerbetli Tatlı")
                                    
                                        .foregroundStyle(.white)
                                        .font(Font.system(size: 30))
                                        .bold()
                                    
                                    
                                    Text("şekerin düştü ha ! | Hadi tatlı  bir şeyler yapalım")
                                        .foregroundStyle(.white)
                                        .font(.subheadline)
                                        .bold()
                                    
                                    
                                    
                                }
                                .padding(.bottom,20)
                            }
                            
                        }
                        
                SherbetCatogryView()
                }
            }
        }
    
#Preview {
    SherbetDessertsView()
}
