//
//  RegisterView.swift
//  alphatodoapp
//
//  Created by Yaşar Ünyılmaz on 26.05.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var password=""
    @State var email = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                //HEADER
                HeaderView()
                
                //REGİSTER FORM
                Form{
                    Section(header: Text("Kayıt Formu")) {
                        TextField("Tam Adınız", text: $name)
                            .autocorrectionDisabled()
                        TextField("Email Adresiniz", text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(.none)
                        SecureField("Password", text: $password)

                    }
                }
                .frame(height: 200)
                
                BigButtonView(title: "Kayıt Ol", action: {})
                
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
