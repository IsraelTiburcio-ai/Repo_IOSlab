//
//  Operations.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 08/10/24.
//

import SwiftUI

struct Operations: View {
    @State var ingreso: Bool = false
    @State var cantidad: Int = 3000
    @State var nombres: String = ""
    
    var body: some View {
        
        VStack{
            HStack{
                AsyncImage(url: URL(string: "https://picsum.photos/45"))
                    .cornerRadius(37.5)
                
                
                VStack(alignment: .leading){
                    Text(nombres)
                        .font(.title3)
                        .bold()
                    
                    Text("02 Oct 2024")
                        .foregroundStyle(.gray)
                }
                Spacer()
                
                VStack(alignment: .trailing){
                    Text("$\(cantidad)")
                        .font(.title3)
                        .foregroundStyle((ingreso) ? .green : .red)
                        .bold()
                    Text((ingreso) ? "Recived" : "Outgoing")
                        .font(.caption)
                }
            }
                
                
        }.padding(.horizontal)
    }
}

#Preview {
    Operations()
}
