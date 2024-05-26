//
//  LoginView.swift
//  alphatodoapp
//
//  Created by Yaşar Ünyılmaz on 26.05.2024.
//

import SwiftUI

struct LoginView: View {

    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                // HEADER
                HeaderView()
                
                
                //FORM-EMAİL, ŞİFRE VE BUTTON
                Form{
                    if !viewModel.errorMessages.isEmpty {
                        Text(viewModel.errorMessages)
                            .foregroundStyle(.red)
                    }
                    TextField("Email Adresiniz",text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Şifreniz", text: $viewModel.password)
                }
                
                .frame(height: 200)
                BigButtonView(title: "Giriş Yap", action: {
                    viewModel.login()
                })
 
                
                
                //FOOTER- HESABINIZ YOK MU
                VStack{
                    Text("Buralarda Yeni Misin ?")
                    NavigationLink("Yeni Hesap Oluştur",destination: RegisterView())
                }
                .padding(.bottom, 150)
            }
        }
    }
}

#Preview {
    LoginView()
}
