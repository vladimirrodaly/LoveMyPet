//
//  pickerlong.swift
//  Love_MyPet
//
//  Created by userext on 06/07/23.
//

import SwiftUI

struct pickerlong: View {
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    
                    print("Botão 'Adicionar' pressionado")
                }) {
                    Text("Cancelar")
                        .padding()
                        .foregroundColor(Color("Blue"))
                        .cornerRadius(10)
                }
                
                Spacer()
                Text("Adicionar pet")
                    .padding(.trailing,0)
                    .foregroundColor(.black)
                Spacer()
                Button(action: {
                    
                    print("Botão 'Adicionar' pressionado")
                }) {
                    Text("Adicionar")
                        .fontWeight(.bold)
                        .padding()
                        .foregroundColor(Color("Blue"))
                        .cornerRadius(10)
                }
                
            }
        }
        
        
    }
    
    
    
}
struct pickerlong_Previews: PreviewProvider {
    static var previews: some View {
        pickerlong()
    }
}

