//
//  VeganRecipe.swift
//  TatlimApp
//
//  Created by samet kaya on 15.05.2024.
//

import Foundation
struct VeganRecipe: Identifiable {//Identifiable, bir nesnenin benzersiz bir kimlik (ID) taşıdığını belirten bir protokoldür. Bu protokolü uygulayan bir nesne, id adında bir özelliğe sahip olur ve bu özellik, nesnenin benzersiz kimliğini temsil eder.
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
let VeganTatliDatabase = [
    Tatli(adi: "Vegan Brownie",
          malzemeler: ["Un", "Şeker", "Kakao Tozu", "Kabartma Tozu", "Tuz", "Bitkisel Yağ", "Su", "Vanilya Özütü"],
          malzemelerGramajlari: ["1 su bardağı", "1 su bardağı", "1/2 su bardağı", "1 çay kaşığı", "1 çay kaşığı", "1/2 su bardağı", "1/2 su bardağı", "1 çay kaşığı"],
          yapilisAdimlari: [
              "Fırını 180°C'ye ısıtın ve kare bir fırın tepsisini yağlayın.",
              "Un, şeker, kakao, kabartma tozu ve tuzu bir kasede karıştırın.",
              "Bitkisel yağ, su ve vanilya özütünü ekleyin ve karıştırın.",
              "Hamuru tepsiye dökün ve 25-30 dakika pişirin.",
              "Soğuduktan sonra dilimleyerek servis yapın."
          ],
          kalori: 250,
          sure: 40,
          resimAdi: "veganbrowni",
          BesinDegerleri: [
            "Kalori: 250 kcal",
            "Protein: 3 g",
            "Yağ: 12 g",
            "Karbonhidrat: 34 g",
            "Şeker: 20 g",
            "Lif: 3 g",
            "Sodyum: 100 mg"
          ]),

    Tatli(adi: "Chia Puding",
          malzemeler: ["Chia Tohumu", "Badem Sütü", "Maple Şurubu", "Vanilya Özütü", "Meyve"],
          malzemelerGramajlari: ["1/4 su bardağı", "1 su bardağı", "1 yemek kaşığı", "1 çay kaşığı", "1/2 su bardağı"],
          yapilisAdimlari: [
              "Chia tohumlarını ve badem sütünü bir kasede karıştırın.",
              "Maple şurubu ve vanilya özütünü ekleyin ve iyice karıştırın.",
              "Buzdolabında en az 4 saat veya gece boyunca bekletin.",
              "Servis yapmadan önce meyve ile süsleyin."
          ],
          kalori: 180,
          sure: 10,
          resimAdi: "chiapuding",
          BesinDegerleri: [
            "Kalori: 180 kcal",
            "Protein: 4 g",
            "Yağ: 10 g",
            "Karbonhidrat: 20 g",
            "Şeker: 12 g",
            "Lif: 8 g",
            "Sodyum: 50 mg"
          ]),

    Tatli(adi: "Vegan Kurabiye",
          malzemeler: ["Un", "Toz Şeker", "Kahverengi Şeker", "Kabartma Tozu", "Tuz", "Bitkisel Yağ", "Badem Sütü", "Vanilya Özütü"],
          malzemelerGramajlari: ["1.5 su bardağı", "1/2 su bardağı", "1/2 su bardağı", "1 çay kaşığı", "1/2 çay kaşığı", "1/2 su bardağı", "2 yemek kaşığı", "1 çay kaşığı"],
          yapilisAdimlari: [
              "Fırını 180°C'ye ısıtın ve fırın tepsisini yağlayın.",
              "Un, toz şeker, kahverengi şeker, kabartma tozu ve tuzu bir kasede karıştırın.",
              "Bitkisel yağ, badem sütü ve vanilya özütünü ekleyin ve karıştırın.",
              "Hamurdan ceviz büyüklüğünde parçalar koparıp tepsiye dizin.",
              "10-12 dakika pişirin, soğuduktan sonra servis yapın."
          ],
          kalori: 150,
          sure: 25,
          resimAdi: "vegankurabiye",
          BesinDegerleri: [
            "Kalori: 150 kcal",
            "Protein: 2 g",
            "Yağ: 8 g",
            "Karbonhidrat: 20 g",
            "Şeker: 10 g",
            "Lif: 1 g",
            "Sodyum: 70 mg"
          ]),

    Tatli(adi: "Vegan Cheesecake",
          malzemeler: ["Bisküvi", "Hindistancevizi Yağı", "Kajun Cevizi", "Limon Suyu", "Maple Şurubu", "Vanilya Özütü"],
          malzemelerGramajlari: ["200 gram", "1/2 su bardağı", "2 su bardağı", "1/2 su bardağı", "1/4 su bardağı", "1 çay kaşığı"],
          yapilisAdimlari: [
              "Bisküvileri ufalayıp hindistancevizi yağı ile karıştırın ve cheesecake tabanını oluşturun.",
              "Kajun cevizlerini 4 saat suda bekletip süzün.",
              "Kajun cevizlerini, limon suyu, maple şurubu ve vanilya özütü ile blenderda pürüzsüz olana kadar karıştırın.",
              "Karışımı bisküvi tabanının üzerine dökün ve buzdolabında 4 saat bekletin.",
              "Soğuduktan sonra dilimleyerek servis yapın."
          ],
          kalori: 350,
          sure: 300,
          resimAdi: "vegancheescake",
          BesinDegerleri: [
            "Kalori: 350 kcal",
            "Protein: 6 g",
            "Yağ: 24 g",
            "Karbonhidrat: 30 g",
            "Şeker: 15 g",
            "Lif: 4 g",
            "Sodyum: 80 mg"
          ]),

    Tatli(adi: "Vegan Muffin",
          malzemeler: ["Un", "Toz Şeker", "Kabartma Tozu", "Tuz", "Badem Sütü", "Elma Püresi", "Vanilya Özütü", "Çikolata Parçaları"],
          malzemelerGramajlari: ["1.5 su bardağı", "1/2 su bardağı", "1 çay kaşığı", "1/2 çay kaşığı", "1 su bardağı", "1/2 su bardağı", "1 çay kaşığı", "1/2 su bardağı"],
          yapilisAdimlari: [
              "Fırını 180°C'ye ısıtın ve muffin kalıplarını yağlayın.",
              "Un, toz şeker, kabartma tozu ve tuzu bir kasede karıştırın.",
              "Badem sütü, elma püresi ve vanilya özütünü ekleyip karıştırın.",
              "Çikolata parçalarını ekleyin ve karıştırın.",
              "Hamuru muffin kalıplarına dökün ve 20-25 dakika pişirin."
          ],
          kalori: 200,
          sure: 35,
          resimAdi: "veganmuffins",
          BesinDegerleri: [
            "Kalori: 200 kcal",
            "Protein: 4 g",
            "Yağ: 8 g",
            "Karbonhidrat: 28 g",
            "Şeker: 15 g",
            "Lif: 2 g",
            "Sodyum: 90 mg"
          ]),

   
]
