//
//  Foto.swift
//  Love
//
//  Created by IOSI on 10/07/23.
//

import SwiftUI

struct Foto: View {
    var body: some View {
        
        HStack{
            VStack{
                
                Image("image")
                Text("Escolher uma foto")
                
            }
        }
    }
    struct Foto_Previews: PreviewProvider {
        static var previews: some View {
            Foto()
        }
    }
}
