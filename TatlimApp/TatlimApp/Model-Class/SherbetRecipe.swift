//
//  SherbetRecipe.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import Foundation
struct SherbetDesser: Identifiable {//Identifiable, bir nesnenin benzersiz bir kimlik (ID) taşıdığını belirten bir protokoldür. Bu protokolü uygulayan bir nesne, id adında bir özelliğe sahip olur ve bu özellik, nesnenin benzersiz kimliğini temsil eder.
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
           return SherbetDatabase.filter { $0.adi.lowercased().contains(query.lowercased()) }
       }
}
let SherbetDatabase = [
    Tatli(adi: "Baklava",
          malzemeler: ["Yufka", "Antep Fıstığı", "Tereyağı", "Şeker", "Su", "Limon", "Tarçın"],
          malzemelerGramajlari: ["500 gram", "250 gram", "250 gram", "3 su bardağı", "3 su bardağı", "1 adet", "2 çay kaşığı"],
          yapilisAdimlari: [
              "Baklava yaprağını tezgaha serin ve üzerine tereyağını sürün.",
              "Üzerine bir yaprağı daha koyun ve yağlayın. Bu işlemi 5 yaprak olana kadar tekrarlayın.",
              "5. Yufkayı üç parmak genişliğinde şeritler halinde kesin.",
              "Üzerine Antep fıstığı serpin.",
              "Yufkayı rulo şeklinde sarın ve baklava tepsisine dizin.",
              "Önceden ısıtılmış 180°C fırında üzeri kızarana kadar pişirin.",
              "Şerbet için su, şeker, limon suyu ve tarçını kaynatın.",
              "Şerbet soğuduktan sonra baklavanın üzerine dökün."
          ],
          kalori: 300,
          sure: 60,
          resimAdi: "baklavaki",
          BesinDegerleri: [
            "Kalori: 300 kcal",
            "Protein: 6 g",
            "Yağ: 18 g",
            "Karbonhidrat: 30 g",
            "Şeker: 20 g",
            "Lif: 2 g",
            "Sodyum: 50 mg"
          ]),

    Tatli(adi: "Şekerpare",
          malzemeler: ["Un", "Tereyağı", "Toz Şeker", "Kabartma Tozu", "Vanilya", "Yumurta", "Badem"],
          malzemelerGramajlari: ["2 su bardağı", "125 gram", "1 su bardağı", "1 paket", "1 paket", "1 adet", "100 gram"],
          yapilisAdimlari: [
              "Un, kabartma tozu ve vanilyayı bir kasede karıştırın.",
              "Ayrı bir kapta oda sıcaklığında yumuşamış tereyağı ve şekeri yoğurun.",
              "Yumurtayı ekleyip karıştırın.",
              "Unlu karışımı ekleyip hamur haline gelene kadar yoğurun.",
              "Hamurdan ceviz büyüklüğünde parçalar koparın, yuvarlayın ve yağlı kağıt serili fırın tepsisine dizin.",
              "Orta kısımda çukur oluşturup içlerine badem batırın.",
              "Önceden ısıtılmış 180°C fırında üzeri kızarana kadar pişirin.",
              "Şerbet için su ve şekeri kaynatın, limon suyunu ekleyip soğumaya bırakın.",
              "Soğuyan şerbeti sıcak tatlıların üzerine dökün."
          ],
          kalori: 250,
          sure: 45,
          resimAdi: "sekerpare",
          BesinDegerleri: [
            "Kalori: 250 kcal",
            "Protein: 4 g",
            "Yağ: 15 g",
            "Karbonhidrat: 28 g",
            "Şeker: 18 g",
            "Lif: 1 g",
            "Sodyum: 20 mg"
          ]),

    Tatli(adi: "Tulumba Tatlısı",
          malzemeler: ["Su", "Un", "Tereyağı", "Tuz", "Yumurta", "Sıvı Yağ", "Toz Şeker", "Su", "Limon"],
          malzemelerGramajlari: ["1 su bardağı", "1 su bardağı", "50 gram", "1 çay kaşığı", "3 adet", "1 su bardağı", "2 su bardağı", "3 su bardağı", "1 adet"],
          yapilisAdimlari: [
              "Tatlının şerbetini hazırlamak için su ve şekeri kaynatın. Üzerine limon suyunu ekleyip soğumaya bırakın.",
              "Başka bir tencerede suyu, tereyağını ve tuzu kaynatın.",
              "Unu ekleyip kısık ateşte karıştırarak pişirin ve hamur top şekli alana kadar yoğurun.",
              "Hamuru bir çırpıcı yardımıyla karıştırın ve soğumaya bırakın.",
              "Soğuyan hamura birer birer yumurtaları ekleyip karıştırın.",
              "Tatlı torbasına doldurduğunuz hamuru kızgın yağda, istediğiniz büyüklükte tulumbalar yapın.",
              "Tulumbaların her iki tarafını da kızartıp, soğuk şerbete atın.",
              "Servis yapmadan önce 1 saat kadar şerbet içinde bekletin."
          ],
          kalori: 220,
          sure: 50,
          resimAdi: "tulumba",
          BesinDegerleri: [
            "Kalori: 220 kcal",
            "Protein: 5 g",
            "Yağ: 10 g",
            "Karbonhidrat: 28 g",
            "Şeker: 20 g",
            "Lif: 1 g",
            "Sodyum: 30 mg"
          ]),

    Tatli(adi: "Revani",
          malzemeler: ["Toz Şeker", "Un", "Yumurta", "Süt", "Zeytinyağı", "Kabartma Tozu", "Limon", "Fındık/ Hindistan cevizi"],
          malzemelerGramajlari: ["1 su bardağı", "1 su bardağı", "4 adet", "1 su bardağı", "1/2 su bardağı", "1 paket", "1 adet", "50 gram"],
          yapilisAdimlari: [
              "Derin bir kasede yumurta ve toz şekeri mikserle iyice çırpın.",
              "Üzerine süt ve zeytinyağını ekleyip karıştırmaya devam edin.",
              "Un ve kabartma tozunu eleyerek ilave edin ve karıştırın.",
              "Yağlanmış bir fırın tepsisine hamuru dökün.",
              "Önceden ısıtılmış 180°C fırında üzeri kızarana kadar pişirin.",
              "Pişen revaniyi fırından çıkartın ve ılınması için bekletin.",
              "Şerbet için su ve şekeri kaynatın, limon suyunu ekleyip soğumaya bırakın.",
              "Ilınan şerbeti revaninin üzerine dökün.",
              "Fındık ile süsleyip servis yapın."
          ],
          kalori: 220,
          sure: 45,
          resimAdi: "revani",
          BesinDegerleri: [
            "Kalori: 220 kcal",
            "Protein: 5 g",
            "Yağ: 10 g",
            "Karbonhidrat: 28 g",
            "Şeker: 20 g",
            "Lif: 1 g",
            "Sodyum: 30 mg"
          ])

          
]
