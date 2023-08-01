
//
//  Created by IOSI on 04/07/23.
//
//
//  ContentView.swift
//  Love_MyPet
//
//  Created by userext on 04/07/23.
//

import SwiftUI

struct Options: Hashable  {
    let name: String
}

let genderOptions = [
    Options(name: "Macho"),
    Options(name: "Fêmia"),
    Options(name: "Outro"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

let speciesOptions = [
    Options(name: "Cachorro"),
    Options(name: "Gato"),
    Options(name: "Pássaro"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

let raceOptions = [
    Options(name: "Labrador"),
    Options(name: "Persa"),
    Options(name: "Canário"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

import SwiftUI

struct petsView: View {
    @State private var selectedGender = genderOptions[0]
    @State private var selectedSpecies = speciesOptions[0]
    @State private var selectedRace = raceOptions[0]
    @State private var selectedDate = Date()
    @State private var textInput: String = ""
    @State var kg : Int = 0
    @State var gram : Int = 0
    @State private var selectedOption = "Sim"
    private let options = ["Sim", "Não"]
    var body: some View {
        VStack {
            
            HStack{
                
                
                Button(action: {
                    
                }) {
                    Text("Cancelar")
                    
                        .foregroundColor(Color("Blue"))
                        .padding()
                    
                }
                
                Text("Pets")
                    .font(.headline)
                    .foregroundColor(.black)
                    .padding(.trailing)
                    .padding()
                
                Button(action: {
                    
                    
                }) {
                    Text("Adicionar")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding()
                    
                }
                
            }
            HStack{
                VStack{
                    
                    Image("image")
                    Text("Escolher  foto")
                    
                }
            }
            
            List {
                
                TextField("Nome do pet", text: $textInput)
                //   .foregroundColor(.gray)
                Picker(selection: $selectedGender, label: Text("Gênero")) {
                    ForEach(genderOptions, id: \.name) { option in
                        Text(option.name).tag(option)
                    }
                }
                .pickerStyle(.automatic)
                
                Picker(selection: $selectedSpecies, label: Text("Espécies")) {
                    ForEach(speciesOptions, id: \.name) { option in
                        Text(option.name).tag(option)
                    }
                }
                .pickerStyle(.automatic)
                
                Picker(selection: $selectedRace, label: Text("Raça")) {
                    ForEach(raceOptions, id: \.name) { option in
                        Text(option.name).tag(option)
                    }
                }
                .pickerStyle(.automatic)
                
                HStack(spacing: 20){
                    Text("Nascimento")
                    
                    DatePicker("Nascimento", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                        .labelsHidden()
                        .datePickerStyle(DefaultDatePickerStyle())
                        .frame(height: 10)
                        .environment(\.locale, Locale(identifier: "pt_Br"))
                    Button(action: {
                        
                        print("Data de nascimento selecionada: \(selectedDate)")
                    }) {
                        Spacer()
                        
                    }
                    
                }
                
            }
            
            List {
                HStack{
                    Text("Peso")
                    Spacer()
                    Rectangle()
                    
                        .overlay{
                            HStack{
                                Text("\(kg)")
                                    .foregroundColor(.black)
                                Text(",")
                                    .foregroundColor(.black)
                                Text("\(gram)kg")
                                    .foregroundColor(.black)
                                
                            }
                            
                        }
                        .frame(width: 90,height: 32)
                        .foregroundColor(.gray.opacity(0.10))
                        .cornerRadius(4)
                    
                }.padding()
                
                HStack(spacing: 150){
                    Text("Cadastro(a)?")
                    
                    
                    Picker("Opções", selection: $selectedOption) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                        }
                    }
                    .pickerStyle(DefaultPickerStyle())
                    .labelsHidden()
                }
                
                Button(action: {
                    
                    print("Opção selecionada: \(selectedOption)")
                }) {
                    
                }
            }
            Spacer()
        }
        
    }
    
}

struct petsView_Previews: PreviewProvider {
    static var previews: some View {
        petsView()
    }
}
