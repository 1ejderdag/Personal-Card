//
//  ContentView.swift
//  EjderCard
//
//  Created by Ejder Dağ on 7.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            
            Image("personal")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(Color.white, lineWidth: 5)
                }
                
            Text("Ejder Dag")
                .font(Font.custom("Pacifico-Regular", size: 35)) // info'da değiştir.
                .bold()
                .foregroundStyle(Color(.white))
            
            Text("iOS Development")
                .bold()
                .foregroundStyle(Color(.white))
                .font(.system(size: 18))
            
            Divider()
            
            InfoView(iconName: "phone.fill", textContent: "+90 123 456 7890")
            InfoView(iconName: "envelope.fill", textContent: "1ejderdag@gmail.com")
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Gradient(colors: [.red, .green, .purple]))
    }
}

#Preview {
    ContentView()
}

