//
//  boutton.swift
//  Love
//
//  Created by IOSI on 10/07/23.
//

import SwiftUI

struct boutton: View {
    var body: some View {
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
    }
    struct boutton_Previews: PreviewProvider {
        static var previews: some View {
            boutton()
        }
    }
}
