//
//  InfoView.swift
//  EjderCard
//
//  Created by Ejder Dağ on 7.05.2024.
//

import SwiftUI

struct InfoView: View {
    let iconName: String  // @State yapsan da çalışıyor yapmasan da
    let textContent: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color(.white))
            .frame(height: 50)
          //.foregroundStyle(Color(.white)) // Yerine fill metodu kullan.
            .overlay {
                HStack() {
                    Image(systemName: iconName)
                        .font(.largeTitle)
                        .foregroundStyle(Color(.green))
                    
                    Text(textContent)
                }
            }
            .padding(.all)
    }
}


#Preview {
    InfoView(iconName: "phone.fill", textContent: "phone number")
        .previewLayout(.sizeThatFits)
}
