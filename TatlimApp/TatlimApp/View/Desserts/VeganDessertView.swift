//
//  VeganDessertView.swift
//  TatlimApp
//
//  Created by samet kaya on 15.05.2024.
//

import SwiftUI

struct VeganDessertView: View {
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
                            Text("Vegan Tatlı")
                                .foregroundStyle(.white)
                                .font(Font.system(size: 30))
                                .bold()
                            Text("Sizleri unuttuk sanmayın | bu tatlılar tam size göre")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .bold()
                        }
                        .padding(.bottom,20)
                    }
                }
            VeganDessertsCatogory()
        }
    }
}

#Preview {
    VeganDessertView()
}
