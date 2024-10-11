//
//  Transacciones.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct Transacciones: View {
    let nombres = ["Israel Tiburcio","Karina Padilla"]
    
    var body: some View {
        VStack{
            HStack{
                Text("Transactions")
                    .bold()
                    .font(.title)
                
                Spacer()
                
                Text("See all")
                    .foregroundStyle(.purple)
                
            }.padding()
            
            ForEach(0..<2){ item in
                Operations(
                    ingreso: (item == 0) ? true :false,
                    cantidad: (item == 0) ? 3000 : -5354,
                    nombres: nombres[item]
                    )
            }
        }
    }
}

#Preview {
    Transacciones()
}
