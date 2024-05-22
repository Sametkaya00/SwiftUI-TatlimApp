//
//  HealthRecipe.swift
//  TatlimApp
//
//  Created by samet kaya on 20.05.2024.
//

import Foundation
struct HealthRecipe: Identifiable {//Identifiable, bir nesnenin benzersiz bir kimlik (ID) taşıdığını belirten bir protokoldür. Bu protokolü uygulayan bir nesne, id adında bir özelliğe sahip olur ve bu özellik, nesnenin benzersiz kimliğini temsil eder.
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
           return VeganTatliDatabase.filter { $0.adi.lowercased().contains(query.lowercased()) }
       }
}
let HealthDatabase = [
    Tatli(adi: "Yulaflı Muzlu Kurabiye",
          malzemeler: ["Yulaf", "Muz", "Ceviz", "Tarçın", "Vanilya Özütü"],
          malzemelerGramajlari: ["2 su bardağı", "2 adet", "1/2 su bardağı", "1 çay kaşığı", "1 çay kaşığı"],
          yapilisAdimlari: [
              "Fırını 180°C'ye ısıtın ve fırın tepsisini yağlayın.",
              "Yulaf, ezilmiş muz, doğranmış ceviz, tarçın ve vanilya özütünü bir kasede karıştırın.",
              "Hamurdan ceviz büyüklüğünde parçalar koparıp tepsiye dizin.",
              "10-12 dakika pişirin, soğuduktan sonra servis yapın."
          ],
          kalori: 100,
          sure: 20,
          resimAdi: "yulaflımuzlukurabiye",
          BesinDegerleri: [
            "Kalori: 100 kcal",
            "Protein: 2 g",
            "Yağ: 4 g",
            "Karbonhidrat: 15 g",
            "Şeker: 5 g",
            "Lif: 2 g",
            "Sodyum: 20 mg"
          ]),

    Tatli(adi: "Chia ve Meyveli Parfe",
          malzemeler: ["Chia Tohumu", "Yoğurt", "Bal", "Çilek", "Yaban Mersini"],
          malzemelerGramajlari: ["1/4 su bardağı", "1 su bardağı", "1 yemek kaşığı", "1/2 su bardağı", "1/2 su bardağı"],
          yapilisAdimlari: [
              "Chia tohumlarını yoğurt ve bal ile karıştırın.",
              "Karışımı buzdolabında en az 4 saat veya gece boyunca bekletin.",
              "Servis yapmadan önce üzerine çilek ve yaban mersini ekleyin."
          ],
          kalori: 150,
          sure: 10,
          resimAdi: "parfe",
          BesinDegerleri: [
            "Kalori: 150 kcal",
            "Protein: 5 g",
            "Yağ: 5 g",
            "Karbonhidrat: 20 g",
            "Şeker: 12 g",
            "Lif: 6 g",
            "Sodyum: 50 mg"
          ]),

    Tatli(adi: "Kinoalı Meyve Salatası",
          malzemeler: ["Kinoa", "Elma", "Muz", "Nar", "Nane"],
          malzemelerGramajlari: ["1 su bardağı", "1 adet", "1 adet", "1/2 su bardağı", "1 yemek kaşığı"],
          yapilisAdimlari: [
              "Kinoayı talimatlara göre haşlayın ve soğumaya bırakın.",
              "Elma ve muzu doğrayın, nar tanelerini çıkarın.",
              "Haşlanmış kinoayı meyvelerle karıştırın.",
              "Üzerine doğranmış nane ekleyerek servis yapın."
          ],
          kalori: 200,
          sure: 20,
          resimAdi: "kiona",
          BesinDegerleri: [
            "Kalori: 200 kcal",
            "Protein: 6 g",
            "Yağ: 3 g",
            "Karbonhidrat: 40 g",
            "Şeker: 20 g",
            "Lif: 8 g",
            "Sodyum: 10 mg"
          ]),

    Tatli(adi: "Fındık Ezmeli Hurma Dolması",
          malzemeler: ["Hurma", "Fındık Ezmesi", "Ceviz", "Kakao Tozu"],
          malzemelerGramajlari: ["10 adet", "1/2 su bardağı", "1/4 su bardağı", "1 yemek kaşığı"],
          yapilisAdimlari: [
              "Hurmaların çekirdeklerini çıkarın ve ortadan kesin.",
              "Her hurmanın içine fındık ezmesi doldurun.",
              "Üzerine doğranmış ceviz ve kakao tozu serpin.",
              "Servis yapmadan önce buzdolabında 15 dakika bekletin."
          ],
          kalori: 120,
          sure: 15,
          resimAdi: "fındıkezmelihurma",
          BesinDegerleri: [
            "Kalori: 120 kcal",
            "Protein: 3 g",
            "Yağ: 4 g",
            "Karbonhidrat: 20 g",
            "Şeker: 16 g",
            "Lif: 3 g",
            "Sodyum: 5 mg"
          ]),

    Tatli(adi: "Yoğurtlu Granola Kasesi",
          malzemeler: ["Yoğurt", "Granola", "Bal", "Badem", "Yaban Mersini"],
          malzemelerGramajlari: ["1 su bardağı", "1/2 su bardağı", "1 yemek kaşığı", "1/4 su bardağı", "1/2 su bardağı"],
          yapilisAdimlari: [
              "Bir kaseye yoğurdu koyun.",
              "Üzerine granola, bal, doğranmış badem ve yaban mersini ekleyin.",
              "Hemen servis yapın."
          ],
          kalori: 220,
          sure: 5,
          resimAdi: "yagurtlu",
          BesinDegerleri: [
            "Kalori: 220 kcal",
            "Protein: 8 g",
            "Yağ: 10 g",
            "Karbonhidrat: 26 g",
            "Şeker: 14 g",
            "Lif: 4 g",
            "Sodyum: 75 mg"
          ])
]
