//
//  Card.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct Card: View {
    let imagenes = ["plus", "arrow.left.arrow.right", "dollarsign", "dollarsign.circle"]
    let nombres = ["Top up", "Swap","Transfer","Request"]
    
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Your Balance")
                .foregroundStyle(.white)
            
            Text("$100.00")
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.white)
            
            Text("Credit Limit: $1,000,000.00")
                .foregroundStyle(.white)
            
            HStack{
                ForEach(0..<4){ item in
                    Boton(nombre: nombres[item],
                          imagen: imagenes[item],
                          color: (item == 0) ? .purple : .white,
                          colorimagen: (item == 0) ? .white : .black
                          
                    )
                }
            }
            
        }.frame(width: 350, height: 220)
            .background(
                LinearGradient(
                    colors:[.black,.black.opacity(0.5)],
                    startPoint: .leading,
                    endPoint: .trailing
                    
                ).cornerRadius(20).shadow(radius: 4,x:10,y:10)
            )
    }
}

#Preview {
    Card()
}
