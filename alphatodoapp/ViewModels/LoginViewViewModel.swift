//
//  LoginViewViewModel.swift
//  alphatodoapp
//
//  Created by Yaşar Ünyılmaz on 26.05.2024.
//

import Foundation

class LoginViewViewModel: ObservableObject{
    // Gözlemlenebilir obje demek.
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessages = ""
    
    init(email: String = "", password: String = "") {
        self.email = email
        self.password = password
    }
    
    func login(){
        errorMessages = ""
        // Burada pass ve email boş olunca mesaj döndürüyor
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
        !password.trimmingCharacters(in: .whitespaces).isEmpty
        else{
            errorMessages = "Lütfen Tüm Alanları Doldurunuz"
            return
        }
        //burada ise email kontrolü yapıyor.
        guard !email.contains("@") && email.contains(".") else{
            errorMessages = "Lütfen Geçerli bir Email Adresi Giriniz"
            return
        }
    }
    
    func validate(){}
}
