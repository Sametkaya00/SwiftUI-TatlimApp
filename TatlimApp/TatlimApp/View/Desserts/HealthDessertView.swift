//
//  HealthDessertView.swift
//  TatlimApp
//
//  Created by samet kaya on 13.05.2024.
//

import SwiftUI

struct HealthDessertView: View {
    var body: some View {
        VStack{
            Rectangle()
                .cornerRadius(20)
                .edgesIgnoringSafeArea(.all)
                .foregroundStyle(.green)
                .frame(height:100)
                
                .overlay{
                    HStack{
                        VStack{
                            Text("Sağlıklı Tatlı")
                                .foregroundStyle(.white)
                                .font(Font.system(size: 30))
                                .bold()
                            Text("Valla sağlığım önemli ama tatlı da yerim diyorsan doğru yerdedin.")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .bold()
                        }
                        .padding(.bottom,20)
                    }
                }
            HealthCategoryView()
        }
    }
}

#Preview {
    HealthDessertView()
}
