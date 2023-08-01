//
//  MenuViewTab.swift
//  Love_MyPet
//
//  Created by userext on 05/07/23.
//

import SwiftUI

struct MenuViewTab: View {
    var body: some View {
       
                
                TabView {
                    Group {
                        
                        PetsView()
                            .tabItem{
                                Label("Pets",systemImage:"pawprint")
                            }
                        
                        ConfiguracoesView()
                            .tabItem{
                                Label("configurações",systemImage:"gearshape")
                            }
                        
                        
                    }
                    
                    .toolbarBackground(.visible, for: .tabBar)
                    .toolbarBackground(Color(.white), for: .tabBar)
                }
                
            }
        }
        
        
struct MenuViewTab_Previews: PreviewProvider {
    static var previews: some View {
        MenuViewTab()
        
    }
    
    
}
