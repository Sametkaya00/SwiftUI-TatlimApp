//
//  ChocolataRecipe.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import Foundation
struct ChocolataDesser: Identifiable {//Identifiable, bir nesnenin benzersiz bir kimlik (ID) taşıdığını belirten bir protokoldür. Bu protokolü uygulayan bir nesne, id adında bir özelliğe sahip olur ve bu özellik, nesnenin benzersiz kimliğini temsil eder.
    var id = UUID()
    var adi: String
    var malzemeler: [String]
    var malzemelerGramajlari: [String]  // Malzemelerin gramajları
    var yapilisAdimlari: [String]
    var kalori: Int
    var sure: Int
    var resimAdi: String
    var BesinDegerleri:[String]
    
    static func search(for query: String) -> [Tatli] {
             return ChocolataDatabase.filter { $0.adi.lowercased().contains(query.lowercased()) }
         }
}

let ChocolataDatabase = [
    Tatli(adi: "Browni",
          malzemeler: ["Bitter Çikolata", "Toz Şeker", "Un", "Yumurta", "Tereyağı", "Vanilya", "Kabartma Tozu", "Tuz"],
          malzemelerGramajlari: ["200 gram", "1.5 su bardağı", "1.5 su bardağı", "3 adet", "150 gram", "1 paket", "1 paket", "1 çay kaşığı"],
          yapilisAdimlari: [
              "Bitter çikolatayı benmari usulü eritin.",
              "Un, kabartma tozu ve tuzu karıştırın.",
              "Yumurtaları ve şekeri mikserle çırpın.",
              "Çikolata ve tereyağını ilave edip karıştırın.",
              "Vanilya ekleyin.",
              "Unlu karışımı ekleyip spatula ile karıştırın.",
              "Yağlanmış fırın kabına döküp önceden ısıtılmış 170°C fırında yaklaşık 30 dakika pişirin."
          ],
          kalori: 380,
          sure: 40,
          resimAdi: "browni",
          BesinDegerleri: [
          
            "Protein: 4 g",
            "Yağ: 22 g",
            "Karbonhidrat: 40 g",
            "Şeker: 26 g",
            "Lif: 2 g"
           
          ]),
    
    Tatli(adi: "Çikolatalı Mousse",
          malzemeler: ["Bitter Çikolata", "Toz Şeker", "Süt", "Yumurta", "Krema"],
          malzemelerGramajlari: ["200 gram", "1 su bardağı", "1 su bardağı", "3 adet", "1 su bardağı"],
          yapilisAdimlari: [
              "Bitter çikolatayı benmari usulü eritin.",
              "Yumurta sarılarını ve şekeri çırpın.",
              "Sütü ilave edin ve karıştırarak kaynatın.",
              "Karışıma çikolatayı ilave edip karıştırın.",
              "Yumurta aklarını köpük kıvamına gelene kadar çırpın.",
              "Kremayı ekleyip çırpın.",
              "Çikolatalı karışıma önce kremayı, ardından yumurta aklarını ekleyip spatula ile karıştırın.",
              "Kaselere paylaştırın ve 2-3 saat buzdolabında bekletin."
          ],
          kalori: 280,
          sure: 30,
          resimAdi: "mouse",
          BesinDegerleri: [
           
            "Protein: 6 g",
            "Yağ: 18 g",
            "Karbonhidrat: 25 g",
            "Şeker: 20 g",
            "Lif: 1 g"
           
          ]),
   
    Tatli(adi: "Çikolatalı Cupcake",
          malzemeler: ["Bitter Çikolata", "Toz Şeker", "Un", "Yumurta", "Tereyağı", "Vanilya", "Kabartma Tozu", "Tuz", "Süt"],
          malzemelerGramajlari: ["200 gram", "1.5 su bardağı", "1.5 su bardağı", "3 adet", "150 gram", "1 paket", "1 paket", "1 çay kaşığı", "1 su bardağı"],
          yapilisAdimlari: [
              "Bitter çikolatayı benmari usulü eritin.",
              "Un, kabartma tozu ve tuzu karıştırın.",
              "Yumurtaları ve şekeri mikserle çırpın.",
              "Çikolata ve tereyağını ilave edip karıştırın.",
              "Vanilya ekleyin.",
              "Unlu karışımı ekleyip spatula ile karıştırın.",
              "Hamuru cupcake kağıtlarına paylaştırın.",
              "Önceden ısıtılmış 180°C fırında yaklaşık 20 dakika pişirin."
          ],
          kalori: 320,
          sure: 35,
          resimAdi: "cupkek",
          BesinDegerleri: [
           
            "Yağ: 16 g",
            "Karbonhidrat: 40 g",
            "Şeker: 26 g",
            "Lif: 2 g"
            
          ]),
    Tatli(adi: "Çikolatalı Cheesecake",
          malzemeler: ["Bitter Çikolata", "Bisküvi", "Tereyağı", "Krem Peynir", "Toz Şeker", "Yumurta", "Kakao", "Vanilya", "Krema"],
          malzemelerGramajlari: ["200 gram", "200 gram", "100 gram", "500 gram", "1 su bardağı", "3 adet", "2 yemek kaşığı", "1 paket", "1 su bardağı"],
          yapilisAdimlari: [
              "Bisküvileri rondodan geçirin ve eritilmiş tereyağı ile karıştırarak taban için hazırlayın.",
              "Karışımı kelepçeli kek kalıbına dökün ve düzgünce bastırarak yayın. Buzdolabında 30 dakika dinlendirin.",
              "Krem peyniri ve şekeri mikserle çırpın.",
              "Yumurtaları teker teker ekleyerek çırpmaya devam edin.",
              "Krema, kakao, vanilya ve eritilmiş çikolatayı ekleyip karıştırın.",
              "Hazırladığınız karışımı kalıbın üzerine dökün ve düzgünce yayın.",
              "Önceden ısıtılmış 160°C fırında yaklaşık 60 dakika pişirin.",
              "Fırını kapatın ve cheesecake'i fırında soğumaya bırakın.",
              "Soğuyan cheesecake'i buzdolabında en az 4 saat dinlendirin.",
              "Servis yapmadan önce üzerini çikolata sosu veya meyve sosu ile süsleyebilirsiniz."
          ],
          kalori: 400,
          sure: 90,
          resimAdi: "cheskek",
          BesinDegerleri: [
            
            "Protein: 7 g",
            "Yağ: 26 g",
            "Karbonhidrat: 35 g",
            "Şeker: 28 g",
            "Lif: 2 g"
            
          ])
]
