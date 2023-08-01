//
//  Excluir.swift
//  LoveMyPet
//
//  Created by userext on 24/07/23.
//

//
//  Delete.swift
//  Love
//
//  Created by IOSI on 21/07/23.
//

import SwiftUI

struct UserProfileView: View {
    @State private var showDeleteAlert: Bool = false
    
    var body: some View {
        VStack {
            
            Button(action: {
                showDeleteAlert = true
            }) {
                Text("Excluir Cadastro")
                    .fontWeight(.bold)
                    .frame(width: UIScreen.main.bounds.width * 0.7)
                    .padding(.all)
                    .foregroundColor(.white)
                    .background(Color(.red))
                    .cornerRadius(15)
            }
            .alert(isPresented: $showDeleteAlert) {
                Alert(
                    title: Text("Excluir Cadastro"),
                    message: Text("Tem certeza que deseja excluir o seu cadastro?"),
                    primaryButton: .destructive(Text("Excluir")) {
                        deleteAccount()
                    },
                    secondaryButton: .cancel()
                )
            }
        }
        
    }
    
    func deleteAccount() {
        
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
