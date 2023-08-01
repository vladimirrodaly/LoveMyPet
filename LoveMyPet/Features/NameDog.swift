//
//  NameDog.swift
//  Love_MyPet
//
//  Created by userext on 06/07/23.
//

import SwiftUI

struct NameDog: View {
    var body: some View {
        VStack{
            
            HStack{
             
                Image("image")
               
                    .padding()
               
            }
            Text("Nome do pet")
                .padding()
                .foregroundColor(.gray)
                
        }
    }
}
struct NameDog_Previews: PreviewProvider {
    static var previews: some View {
        NameDog()
    }
}
