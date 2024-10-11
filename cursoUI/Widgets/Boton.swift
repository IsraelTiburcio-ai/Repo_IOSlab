//
//  Boton.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct Boton: View {
    @State var nombre: String
    @State var imagen: String
    @State var color: Color = .white
    @State var colorimagen: Color = .white
    
    var body: some View {
        VStack{
            Image(systemName: imagen)
                .foregroundColor(colorimagen)
                .font(.title)
                .frame(width: 60,height: 60)
                .background(color)
                .cornerRadius(40)
            
            Text(nombre).foregroundStyle(.white)
        }
    }
}

#Preview {
    Boton(nombre:"Hola",imagen:"dollarsign.circle")
}
