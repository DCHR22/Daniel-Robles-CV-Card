//
//  InfoView.swift
//  Daniel Robles Card
//
//  Created by Camilo L-Shide on 14/01/24.
//

import SwiftUI

struct InfoView: View{
    
    let text: String
    let imageName : String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 380, height: 50)
            .foregroundColor(Color(red: 1.00, green: 0.50, blue: 0.31, opacity: 0))
            .overlay(HStack {
                Image(systemName: imageName)
                Text(text)
                    .font(Font.custom("BungeeSpice-Regular", size: 15))
                    .multilineTextAlignment(.center)
            })
            .foregroundColor(Color(red: 0.91, green: 0.25, blue: 0.09))
    }
}

#Preview {
    InfoView(text:"Hello",imageName: "phone.fill")
}
