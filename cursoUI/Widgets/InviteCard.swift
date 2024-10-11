//
//  InviteCard.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 08/10/24.
//

import SwiftUI

struct InviteCard: View {
    @State var titulo: String = ""
    @State var descripcion: String = ""
    @State var iCard: String = ""
    @State var formas: String = ""
    
    var body: some View {
        HStack{
            VStack{
                HStack(spacing: -10){
                    
                    if(formas == "Circle"){
                        
                        ForEach(0..<3){ item in
                            AsyncImage(url: URL(string : "https://picsum.photos/40")
                            )
                            .cornerRadius(20)
                            .overlay(
                                Circle().stroke(.white).frame(width: 40)
                            )
                            .shadow(radius:3,x:3,y:3)
                        }
                        
                    }else if(formas == "Rectangle"){
                        ForEach(1..<3){ item in
                            Image(iCard)
                                .resizable()
                                .frame(width: 85, height: 50)       
                                .cornerRadius(5)
                                .overlay(Rectangle().stroke(.gray).frame(width: 85, height: 50)).cornerRadius(5)
                                .shadow(radius: 3, x:3,y:3).padding(-10)
                        }
                        
                    }
                    
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .frame(width: 20, height: 20)
                            .background(.purple)
                            .cornerRadius(10)
                            .foregroundStyle(.white)
                    }
                }
                Text(titulo)
                    .font(.title2)
                    .bold()
                
                Text(descripcion)
                    .font(.caption)
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
                
            }.padding(.vertical)
                .frame(width: 180, height: 160).background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            
        }
    }
    
}
#Preview{
    InviteCard()
}
