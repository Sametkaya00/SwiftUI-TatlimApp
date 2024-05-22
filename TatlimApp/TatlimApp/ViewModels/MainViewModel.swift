//
//  MainViewModel.swift
//  TatlimApp
//
//  Created by samet kaya on 30.04.2024.
//

import Foundation
import FirebaseAuth

class MainViewModel:ObservableObject{
    @Published var currenUserId : String = ""
    
    init(){
        Auth.auth().addStateDidChangeListener{[weak self]_, user in
            DispatchQueue.main.async{
                self?.currenUserId=user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn:Bool{
        return Auth.auth().currentUser != nil
    }
}
