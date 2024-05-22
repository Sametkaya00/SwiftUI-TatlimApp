//
//  MilkDessertView.swift
//  TatlimApp
//
//  Created by samet kaya on 1.05.2024.
//

import SwiftUI

struct MilkDessertView: View {
    
    var body: some View {
        
        
        VStack{
            Rectangle()
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(.color)
                .frame(height:100)
            
            
                .overlay{
                    HStack{
                        VStack{
                            
                            
                            Text("Sütlü Tatlı")
                            
                                .foregroundStyle(.white)
                                .font(Font.system(size: 30))
                                .bold()
                            
                            
                            Text("Demek canın sütlü tatlı çekti ha! | Hadi yapalım")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .bold()
                            
                            
                            
                        }
                        .padding(.bottom,20)
                     
                        
                        
                    }
                    
                    
                }
            
            MilkDesssertCategoryView()
            
        }
       
    }
    
}


#Preview {
    MilkDessertView()
}
