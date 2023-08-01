//
//  Stack complete.swift
//  LoveMyPet
//
//  Created by userext on 26/07/23.
//

struct Opcoes: Hashable  {
    let name: String
}

let gendeOptions = [
    Options(name: "Macho"),
    Options(name: "Fêmea"),
    Options(name: "Nenhum"),
    Options(name: "outro"),
]

let specieOptions = [
    Options(name: "Cachorro"),
    Options(name: "Gato"),
    Options(name: "Pássaro"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

let raceptions = [
    Options(name: "Labrador"),
    Options(name: "Persa"),
    Options(name: "Canário"),
    Options(name: "Nenhum"),
    Options(name: "Não escolhida")
]

import PhotosUI
import SwiftUI
struct TaskCompleteView: View {
    
    @State private var showDeleteAlert: Bool = false
    @State private var selectedGender = genderOptions[0]
    @State private var selectedSpecies = speciesOptions[0]
    @State private var selectedRace = raceOptions[0]
    @State private var selectedDate = Date()
    @State private var textoDigitado: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    @State  var quilo = 0
    @State var grama = 0
    @State var isView: Bool = false
    @State private var scale = 1.0
    @State private var selectedOption = "Sim"
    let numbers = Array(0...100)
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
                    Section {
                        TextField("None do pet", text: $textoDigitado)
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
                    Section {
                        VStack {
                            HStack {
                                Text("Peso")
                                Spacer()
                                Text("\(quilo),\(grama) Kg")
                                    .foregroundColor(.black)
                                    .monospacedDigit()
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 8)
                                    .background(Color.gray.opacity(0.2))
                                    .cornerRadius(2)
                            }
                            .onTapGesture {
                                isView.toggle()
                            }
                            HStack(spacing: 0){
                                if isView {
                                    Group {
                                        Picker("Quilo", selection: $quilo) {
                                            ForEach(0..<100) {
                                                Text("\($0)")
                                            }
                                        }
                                        Picker("Gramas", selection: $grama) {
                                            ForEach(0..<100) {
                                                Text("\($0)")
                                            }
                                        }
                                        .overlay {
                                            Text("Kg")
                                                .offset(x: 50)
                                        }
                                    }
                                    .frame(width: geometry.size.width / 2 + 30)
                                    .labelsHidden()
                                    .fixedSize(horizontal: true, vertical: true)
                                    .frame(width: geometry.size.width / 2, height: 160)
                                    .clipped()
                                    .pickerStyle(.wheel)
                                }
                            }
                            .overlay {
                                Text(",")
                            }
                        }
                        .listRowBackground(Color("Gris"))
                        HStack(){
                            Text("Cadastro(a)?")
                            Spacer()
                            Picker("Opções", selection: $selectedOption) {
                                ForEach(options, id: \.self) { option in
                                    Text(option)
                                }
                            }
                            .pickerStyle(DefaultPickerStyle())
                            .labelsHidden()
                        }
                        .listRowBackground(Color("Gris"))
                    }
                    VStack {
                        
                        Button(action: {
                            showDeleteAlert = true
                        }) {
                            Text("Excluir Cadastro")
                                .fontWeight(.bold)
                                .frame(width: UIScreen.main.bounds.width * 0.8)
                                .padding(.all)
                                .foregroundColor(.white)
                                .background(Color("Rouge"))
                                .cornerRadius(15)
                        }
                        .alert(isPresented: $showDeleteAlert) {
                            Alert(
                                title: Text("Deseja excluir o Cadastro"),
                                message: Text("Uma vez excluída, essa ação não pode ser desfeita."),
                                primaryButton: .destructive(Text("Excluir")) {
                                    // deleteAccount()
                                },
                                secondaryButton: .cancel()
                            )
                        }
                    }
                    
                }
            }
            .scrollDisabled(true)
            .scrollContentBackground(.hidden)
        }
    }
}


struct TaskComplete_Previews: PreviewProvider {
    static var previews: some View {
        TaskCompleteView()
    }
}
