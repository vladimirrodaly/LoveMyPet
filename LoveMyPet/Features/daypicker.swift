
//daypicker.swift
// LoveMyPet

//Created by userext on 24/07/23.


import SwiftUI

struct DatapickerView: View {
    @State private var selectedDate = Date()
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MM yy"
        formatter.locale = Locale(identifier: "pt_Br")
        return formatter
    }
    
    var body: some View {
        HStack(spacing: 50){
            Text("Nascimento")
            
            DatePicker("", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                .datePickerStyle(.compact)
                .labelsHidden()
                .frame(height: 200)
                .environment(\.locale, Locale(identifier: "pt_Br"))
            
            Button(action: {
                
                let formattedDate = dateFormatter.string(from: selectedDate)
                print("Data de nascimento selecionada: \(formattedDate)")
            }) {
            }
            
        }
    }
}

struct DatapickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatapickerView()
    }
}
