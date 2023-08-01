//
//  completo.swift
//  Love
//
//  Created by IOSI on 10/07/23.
//

import SwiftUI

struct completo: View {
    var body: some View {
        
        HStack{
            VStack{
                HStack {
                    
                    HStack{
                        Button(action: {
                            // Ação do botão "Adicionar"
                        }) {
                            Text("Cancelar")
                                .font(.headline)
                                .foregroundColor(Color("Blue"))
                                .padding()
                            
                        }
                        
                        Text("Pets")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.trailing)
                            .padding()
                    }
                    
                    Button(action: {
                        // Ação do botão "Adicionar"
                    }) {
                        Text("Adicionar")
                            .font(.headline)
                            .foregroundColor(Color("Blue"))
                            .padding()
                        
                    }
                }
                Image("image")
                Text("Escolher uma foto")
                VStack{
                    
                    
                    Text("Nome do pet")
                        .padding()
                        .foregroundColor(.gray)
                    
                    
                }
                
            }
        }
    }
    
    struct completo_Previews: PreviewProvider {
        static var previews: some View {
            completo()
        }
    }
}
