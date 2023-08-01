//
//  day.swift
//  Love
//
//  Created by IOSI on 10/07/23.
//

import SwiftUI

struct dayView: View {
    @State private var selectedDate = Date()
    
    var body: some View {
        HStack(spacing: 65){
            
            Text("Nascimento")
            
            DatePicker("Nascimento", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
            
                .labelsHidden()
                .datePickerStyle(DefaultDatePickerStyle())
                .frame(height: 200)
                .environment(\.locale, Locale(identifier: "pt_Br"))
            Button(action: {
                
                print("Data de nascimento selecionada: \(selectedDate)")
            }) {
                
                
            }
            
        }
        
    }
}

struct dayView_Previews: PreviewProvider {
    static var previews: some View {
        dayView()
    }
}
