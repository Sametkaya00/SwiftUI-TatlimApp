//
//  LoginViewModel.swift
//  TatlimApp
//
//  Created by samet kaya on 29.04.2024.
//

import Foundation
import FirebaseAuth

class LoginViewModel:ObservableObject{
    @Published var email=""
    @Published var password=""
    @Published var errorMassega=""
    
    init(){}
    
    func login(){
        
        guard accessControl() else{
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    
    func accessControl() -> Bool{
        errorMassega=""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMassega = "Lütfen tüm alanları doldurunuz"
            return false
        }
        guard email.contains("@")&&email.contains(".")
        
        else{
            errorMassega="Lütfen geçerli bir mail adresi giriniz"
            return false
        }
        guard email.contains("gmail")
                
        else{
            errorMassega="Sanırım 'gmail' yazmayı unuttunuz."
            return false
        }
        return true
    }
    
    
    
    
}
