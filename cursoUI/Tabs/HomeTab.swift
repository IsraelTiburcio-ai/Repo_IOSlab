//
//  HomeTab.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct HomeTab: View {
    let titulos = ["invite Friends","Add Card",]
    let descripciones = ["Invite your friends using our aplication", "Add your card make transactions easier"]
    let imageCard = ["blueCard","blackCard"]
    let forma = ["Circle","Rectangle"]
    
    var body: some View {
        ScrollView{
            VStack{
                Header()
                Card()
                Transacciones()
                
                HStack{
                    ForEach(0..<2) { item in
                        InviteCard(titulo: titulos[item],
                                   descripcion: descripciones[item],
                                   iCard: imageCard[item],
                                   formas: forma[item]
                                   
                        )
                        
                    }
                }
            }
        }.refreshable {
            //
        }
        
    }
    
}

#Preview {
    HomeTab()
}
