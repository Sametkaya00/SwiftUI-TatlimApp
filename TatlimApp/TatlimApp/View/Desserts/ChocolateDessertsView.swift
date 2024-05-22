//
//  ChocolateDessertsView.swift
//  TatlimApp
//
//  Created by samet kaya on 1.05.2024.
//

import SwiftUI

struct ChocolateDessertsView: View {
    var body: some View {
      
           
                VStack{
                    Rectangle()
                        .cornerRadius(20)
                        .edgesIgnoringSafeArea(.all)
                        .foregroundStyle(.cikolata)
                        .frame(height:100)
                    
                    
                        .overlay{
                            HStack{
                                VStack{
                                    
                                    
                                    Text("Çikolatalı Tatlı")
                                    
                                        .foregroundStyle(.white)
                                        .font(Font.system(size: 30))
                                        .bold()
                                    
                                    
                                    Text("Benim de canım çekti | Hadi yapalım")
                                        .foregroundStyle(.white)
                                        .font(.subheadline)
                                        .bold()
                                    
                                    
                                    
                                }
                                .padding(.bottom,20)
                            }
                            
                        }
                        
                ChocolatCacegoryView()
                }
            }
        }
    
#Preview {
    ChocolateDessertsView()
}
