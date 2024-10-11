//
//  Header.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            AsyncImage(url: URL(string: "https://picsum.photos/50"))
                .cornerRadius(37.5)
            
            VStack(alignment: .leading){
                Text("Good Morning")
                .font(.caption2)
                Text("Israel Tiburcio")
                    .font(.title)
                    .bold()
            }
            
            Spacer()
            
            ZStack {
                
                Circle().frame(width: 40)
                    .foregroundColor(.white)
                    .shadow(radius: 14, x: 3, y:3)
                
                Image(systemName: "bell")
                    .font(.title)
                    .cornerRadius(20)
                    .overlay(
                Circle().frame(width: 5)
                    .foregroundColor(.red)
                    .position(x: 25 , y:10)
                )
                    
            }
            
        }.padding()
    }
}

#Preview {
    Header()
}
