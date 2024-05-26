//
//  BigButtonView.swift
//  alphatodoapp
//
//  Created by Yaşar Ünyılmaz on 26.05.2024.
//

import SwiftUI

struct BigButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundStyle(.primary)
                Text(title)
                    .foregroundStyle(.white)
            }
        })
        
        .frame(height: 50)
        .padding()
        Spacer()

    }
}

#Preview {
    BigButtonView(title: "String", action: {})
}
