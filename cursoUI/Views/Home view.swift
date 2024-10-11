//
//  Home view.swift
//  cursoUI
//
//  Created by IsraelTiburcio on 04/10/24.
//

import SwiftUI

struct Home_view: View {
    var body: some View {
        TabView{
            HomeTab().tabItem {
                Label("",systemImage: "house")
                    }
                
                    Tab1().tabItem {                    Label("",systemImage: "person")
                    }
                    
                    Tab2().tabItem {
                        Label("",systemImage: "sun.max")
                    }
                        
                    Tab3().tabItem {
                        Label("",systemImage: "moon")
                    }
        }
    }
}

#Preview {
    Home_view()
}
