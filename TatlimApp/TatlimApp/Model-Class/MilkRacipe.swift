//
//  Dessert.swift
//  TatlimApp
//
//  Created by samet kaya on 2.05.2024.
//

import Foundation

struct Tatli: Identifiable,Hashable {//Identifiable, bir nesnenin benzersiz bir kimlik (ID) taşıdığını belirten bir protokoldür. Bu protokolü uygulayan bir nesne, id adında bir özelliğe sahip olur ve bu özellik, nesnenin benzersiz kimliğini temsil eder.
    var id = UUID()
    var adi: String
    var malzemeler: [String]
    var malzemelerGramajlari: [String]
    var yapilisAdimlari: [String]
    var kalori: Int
    var sure: Int
    var resimAdi: String
    var BesinDegerleri:[String]
    
    
    static func search(for query: String) -> [Tatli] {
           return tatliVeritabani.filter { $0.adi.lowercased().contains(query.lowercased()) }
       }
}

let tatliVeritabani = [
    Tatli(adi: "Fırında Sütlaç",
          malzemeler: ["Süt", "Pirinç", "Toz Şeker", "Nişasta"],
          malzemelerGramajlari: ["1 litre ", "1 su bardağı ", "1 su bardağı", "1 yemek kaşığı"],
          yapilisAdimlari: [
            " Pirinci yıkayıp süzün.",
            " Bir tencerede süt, pirinç, toz şeker ve nişastayı karıştırın.",
            " Karışımı ocakta sürekli karıştırarak pişirin. Karışım koyulaşmaya başladığında ocaktan alın.",
            " Fırın kabına boşaltın ve üzeri kızarana kadar pişirin.",
            " Pişen sütlaçları fırından çıkartın, oda sıcaklığına gelene kadar bekletin.",
            " Oda sıcaklığına geldiğinde, buzdolabına kaldırın ve soğuyana kadar bekletin.",
            " Soğuyan sütlaçları servis yapmadan önce üzerini tarçın veya dilediğiniz şekilde süsleyebilirsiniz."
          ],
          kalori: 200,
          sure: 60,
          resimAdi: "sutlac", BesinDegerleri: [
            "Protein: 6.4 gr",
            "Yağ: 5.6 gr",
            "Karbonhidrat: 33.3 gr",
            "Şeker: 22.6 gr",
            "Lif: 0.4 gr"]),
    
    Tatli(adi: "Trileçe",
          malzemeler: ["Kek", "Süt", "Krema", "Toz Şeker"],
          malzemelerGramajlari: ["1 adet", "1 su bardağı (", "1 su bardağı ", "1 su bardağı "],
          yapilisAdimlari: [
            " Keki ıslatmak için sütü hazırlayın.",
            " Kekin altına süt dökün.",
            " Üzerine krema dökün.",
            " Tekrar kek koyun ve üzerine krema dökün.",
            " Trileçeyi buzdolabında en az 2 saat dinlendirin.",
            " Dilimleyerek servis yapın."
          ],
          kalori: 300,
          sure: 45,
          resimAdi: "trilice",BesinDegerleri: [
            
            "Protein: 5 gr",
            "Yağ: 17 gr",
            "Karbonhidrat: 31 gr",
            "Şeker: 26 gr",
            "Lif: 0.6 gr"
          ]),
   
    Tatli(adi: "Kadayıflı Muhallebi",
          malzemeler: ["Süt", "Toz Şeker", "İrmik", "Kadayıf", "Tereyağı", "Şeker"],
          malzemelerGramajlari: ["1 litre ", "1 su bardağı ", "1 su bardağı", "100 gram", "50 gram", "Yarım su bardağı "],
          yapilisAdimlari: [
              "İlk olarak muhallebi için süt, şeker ve irmiği bir tencerede karıştırın.",
              " Karışımı kısık ateşte koyulaşana kadar pişirin.",
              " Pişen muhallebiyi ocaktan alıp, bir kenara alın.",
              " Kadayıfları tereyağında kavurun.",
              " Şeker ekleyip karamel olana kadar pişirin.",
              " Servis tabağına önce kadayıfları, sonra muhallebiyi dökün.",
              " Üzerini isteğe göre ceviz veya fındık ile süsleyin."
          ],
          kalori: 250,
          sure: 40,
          resimAdi: "kadayif",BesinDegerleri: [
            "Protein: 4 gr",
            "Yağ: 10 gr",
            "Karbonhidrat: 36 gr",
            "Şeker: 20 gr",
            "Lif: 1 g"])
    ,
    Tatli(adi: "Magnolia Tatlısı",
          malzemeler: ["Un", "Toz Şeker", "Süt", "Sıvı Yağ", "Yumurta", "Kabartma Tozu", "Vanilya", "Kakao"],
          malzemelerGramajlari: ["2 su bardağı ", "1 su bardağı", "1 su bardağı ", "1/2 su bardağı ", "2 adet", "1 paket", "1 paket", "1 yemek kaşığı"],
          yapilisAdimlari: [
              " Un, toz şeker, süt, sıvı yağ, yumurta, kabartma tozu ve vanilyayı bir kabın içinde karıştırın.",
              " Karışımı homojen bir kıvam alana kadar çırpın.",
              " Hazırladığınız karışımın yarısını ayrı bir kaba alın, kakaoyu ekleyip karıştırın.",
              " Muffin kalıplarını yağlayın veya kağıt muffin kalıpları kullanın.",
              " Önceden ısıtılmış 180 derece fırında yaklaşık 20-25 dakika pişirin.",
              " Pişen magnolia tatlılarınızı soğuduktan sonra servis yapabilirsiniz."
          ],
          kalori: 150,
          sure: 30,
          resimAdi: "mognolia", BesinDegerleri: [
            "Protein: 3 g",
            "Yağ: 7 g",
            "Karbonhidrat: 20 g",
            "Şeker: 10 g",
            "Lif: 1 g"])
]
