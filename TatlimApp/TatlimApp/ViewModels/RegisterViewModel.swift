//
//  RegisterViewModel.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewModel:ObservableObject{
    @Published var name=""
    @Published var email=""
    @Published var password=""
    @Published var errorMassege=""
    
    init(){}
    
    func register(){
        
        guard valiData() else{
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) {[weak self] result,
        error in
        guard let userId = result?.user.uid else{
            return
        }
        
            
            self?.UserRecord(id:userId)
    }
        
}
    
    private func UserRecord(id:String){
        let newUser = User(id: id,name: name,email:email)
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictonary())
    }
    
    private func valiData()->Bool{
        errorMassege=""
        
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMassege = "Lütfen tüm alanları doldurunuz"
            return false
        }
        
        guard email.contains("@")&&email.contains(".")
        else{
            errorMassege="Geçerli bir email adresi giriniz"
            return false
        }
        guard email.contains("gmail")
        else{
            errorMassege="'gmail' yazmayı unuttunuz sanırım."
            return false
        }
        guard password.count >= 6
        else{
            errorMassege="Lütfen 9 veya daha fazla karakter kullanın."
            return false
        }
        return true
    }
    
}
