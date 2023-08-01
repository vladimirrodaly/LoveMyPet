//
//  StackFull.swift
//  LoveMyPet
//
//  Created by userext on 25/07/23.
//

//  peso.swift
//  Love
//  Created by IOSI on 21/07/23.

struct options: Hashable  {
    let name: String
}

let gendersOptions = [
    Options(name: "Macho"),
    Options(name: "Fêmea"),
    Options(name: "Nenhum"),
    Options(name: "outro"),
]

let SpeciesOptions = [
    Options(name: "Cachorro"),
    Options(name: "Gato"),
    Options(name: "Pássaro"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

let racesOptions = [
    Options(name: "Labrador"),
    Options(name: "Persa"),
    Options(name: "Canário"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

import PhotosUI
import SwiftUI
struct StackFullView: View {
    
    @State private var selectedGender = genderOptions[0]
    @State private var selectedSpecies = speciesOptions[0]
    @State private var selectedRace = raceOptions[0]
    @State private var selectedDate = Date()
    @State private var textoDigitado: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @State var kg : Int = 0
    @State var gram : Int = 0
    @State private var selectedOption = "Sim"
    private let options = ["Sim", "Não"]
    var body: some View {
        
        GeometryReader { geometry in
            VStack {
                
                HStack{
                    
                    
                    Button(action: {
                        
                    }) {
                        Text("Cancelar")
                        
                            .foregroundColor(Color("Blue"))
                            .padding()
                        
                    }
                    
                    Text("Adicionar Pets")
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
                VStack {
                    
                    PhotosPicker(selection: $avatarItem, matching: .images) {
                        VStack {
                            if let avatarImage {
                                avatarImage
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .scaledToFit()
                                    .cornerRadius(100)
                                Text("Trocar foto")
                                    .foregroundColor(.black)
                            } else { Image("image")
                                    .frame(width: 70, height: 70)
                                Text("Escolher foto")
                                    .foregroundColor(.black)
                                
                            }
                        }
                    }
                    
                }
                .onChange(of: avatarItem) { _ in
                    Task {
                        if let data = try? await avatarItem?.loadTransferable(type: Data.self),
                           let uiImage = UIImage(data: data) {
                            avatarImage = Image(uiImage: uiImage)
                        } else {
                            print("Failed")
                        }
                    }
                }
                List{
                    
                    TextField("Nome do pet", text: $textoDigitado)
                    // .padding()
                        .foregroundColor(.gray)
                        .listRowBackground(Color("Gris"))
                    Picker(selection: $selectedGender, label: Text("Gênero")) {
                        ForEach(genderOptions, id: \.name) { option in
                            Text(option.name).tag(option)
                        }
                    }
                    .pickerStyle(.automatic)
                     .listRowBackground(Color("Gris"))
                    Picker(selection: $selectedSpecies, label: Text("Espécies")) {
                        ForEach(speciesOptions, id: \.name) { option in
                            Text(option.name).tag(option)
                        }
                    }
                    .pickerStyle(.automatic)
                    .listRowBackground(Color("Gris"))
                    Picker(selection: $selectedRace, label: Text("Raça")) {
                        ForEach(raceOptions, id: \.name) { option in
                            Text(option.name).tag(option)
                        }
                    }
                    .pickerStyle(.automatic)
                    .listRowBackground(Color("Gris"))
                    HStack(spacing: 23){
                        Text("Nascimento")
                        
                        DatePicker("Nascimento", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
                            .labelsHidden()
                            .datePickerStyle(DefaultDatePickerStyle())
                            .frame(height: 10)
                            .environment(\.locale, Locale.init (identifier: "pt"))
                        Button(action: {
                            
                            print("Data de nascimento selecionada: \(selectedDate)")
                        }) {
                            Spacer()
                        }
                    }
                    .listRowBackground(Color("Gris"))
                }
                //.scrollContentBackground(.hidden)
                .scrollDisabled(true)
                .scrollContentBackground(.hidden)
                
                List {
                    
                    VStack {
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
                                        Text("\(gram) kg")
                                            .foregroundColor(.black)
                                        
                                    }
                                    
                                }
                                .frame(width:100,height: 32)
                                .foregroundColor(.gray.opacity(0.10))
                                .cornerRadius(4)
                            
                        }
                        .padding(.horizontal, 25.0)
                        
                        Rectangle()
                        
                            .fill(Color.gray)
                            .frame(height: 1)
                        
                        
                        
                        HStack(spacing: 0) {
                            
                            Group {
                                Picker("kilogram", selection: $kg) {
                                    ForEach(0..<1000) {
                                        Text("\($0)")
                                    }
                                }
                                
                                Picker("gram", selection: $gram) {
                                    ForEach(0..<200) {
                                        Text("\($0%10)").tag($0 % 10)
                                    }
                                }
                                .overlay{
                                    Text("kg")
                                        .offset(x: 50)
                                }
                            }
                            .frame(width: geometry.size.width / 2 + 30)
                            .labelsHidden()
                            .fixedSize(horizontal: true, vertical: true)
                            .frame(width: geometry.size.width / 2 , height: 160)
                            .clipped()
                            .pickerStyle(.wheel)
                        }
                        .overlay(Text(","))
                    }
                    .listRowBackground(Color("Gris"))
                    VStack{
                        HStack(spacing: 120){
                            Text("Cadastro(a)?")
                            
                            
                            Picker("Opções", selection: $selectedOption) {
                                ForEach(options, id: \.self) { option in
                                    Text(option)
                                }
                            }
                            .pickerStyle(DefaultPickerStyle())
                            .labelsHidden()
                        }
                        .padding(.bottom, -28)
                        //.listRowBackground(Color("Gris"))
                        Button(action: {
                            
                            print("Opção selecionada: \(selectedOption)")
                        }) {
                            
                        }
                        
                    }
                    .listRowBackground(Color("Gris"))
                    //.scrollContentBackground(.hidden)
                    
                }
            }
        }
         //.scrollDisabled(true)
        .scrollContentBackground(.hidden)
        
    }
    
}

struct StackFullView_Previews: PreviewProvider {
    static var previews: some View {
        StackFullView()
    }
    
}
