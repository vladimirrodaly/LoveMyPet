//
//  SwiftUIView.swift
//  LoveMyPet
//
//  Created by userext on 24/07/23.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var selectedDate = Date()
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM yyyy"
        formatter.locale = Locale(identifier: "pt_BR")
        return formatter
    }
    
    var body: some View {
        HStack(spacing: 30){
            Text("Nascimento")
            
            DatePicker("", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
               // .datePickerStyle(GraphicalDatePickerStyle())
                .labelsHidden()
                .frame(height: 200)
            
            Button(action: {
                // Ação do botão para processar a data de nascimento
                let formattedDate = dateFormatter.string(from: selectedDate)
                print("Data de nascimento selecionada: \(formattedDate)")
            }) {
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
