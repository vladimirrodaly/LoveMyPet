//
////  Love_MyPet
////  Created by userext on 17/07/23.
////
//
//import SwiftUI
//import PhotosUI
//struct Option: Hashable  {
//    let name: String
//}
//
//let gendersOptions = [
//    Options(name: "Masculino"),
//    Options(name: "Feminino"),
//    Options(name: "Outro"),
//    Options(name: "Nenhum"),
//    Options(name: "Não escolhida")
//]
//
//let specierOptions = [
//    Options(name: "Cachorro"),
//    Options(name: "Gato"),
//    Options(name: "Pássaro"),
//    Options(name: "Nenhum"),
//    Options(name: "Não escolhida")
//]
//
//let racesptions = [
//    Options(name: "Labrador"),
//    Options(name: "Persa"),
//    Options(name: "Canário"),
//    Options(name: "Nenhum"),
//    Options(name: "Não escolhida")
//]
//
//import SwiftUI
//
//struct AdicionarView: View {
//    @State private var selectedItems = [PhotosPickerItem]()
//    @State private var selectedImages = [Image]()
//    @State private var selectedGender = genderOptions[0]
//    @State private var selectedSpecies = speciesOptions[0]
//    @State private var selectedRace = raceOptions[0]
//    @State private var selectedDate = Date()
//    @State private var textoDigitado: String = ""
//    @State private var avatarItem: PhotosPickerItem?
//    @State private var avatarImage: Image?
//    @State var kg : Int = 0
//    @State var gram : Int = 0
//    @State private var selectedOption = "Sim"
//    private let options = ["Sim", "Não"]
//    var body: some View {
//        VStack {
//            
//            HStack{
//                
//                
//                Button(action: {
//                    
//                }) {
//                    Text("Cancelar")
//                    
//                        .foregroundColor(Color("Blue"))
//                        .padding()
//                    
//                }
//                
//                Text("Adicionar Pets")
//                    .font(.headline)
//                    .foregroundColor(.black)
//                    .padding(.trailing)
//                    .padding()
//                
//                Button(action: {
//                    
//                    
//                }) {
//                    Text("Adicionar")
//                        .font(.headline)
//                        .foregroundColor(.gray)
//                        .padding()
//                    
//                }
//                
//            }
//            HStack{
//                VStack{VStack {
//                    ZStack {
//                        if let avatarImage {
//                            avatarImage
//                                .resizable()
//                            
//                                .frame(width: 100, height: 100)
//                                .scaledToFit()
//                                .cornerRadius(50)
//                            
//                        } else {
//                            Circle()
//                                .frame(width: 100, height: 100)
//                                .foregroundColor(.gray)
//                        }
//                    }
//                    PhotosPicker("Trocar Foto", selection: $avatarItem, matching: .images)
//                        .foregroundColor(.black)
//                }
//                .onChange(of: avatarItem) { _ in
//                    Task {
//                        if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
//                            if let uiImage = UIImage(data: data) {
//                                avatarImage = Image(uiImage: uiImage)
//                                return
//                            }
//                        }
//                        
//                        print("Failed")
//                    }
//                }
//                }
//            }
//            
//            List{
//                
//                TextField("None do pet", text: $textoDigitado)
//                    .padding()
//                    .foregroundColor(.gray)
//                Picker(selection: $selectedGender, label: Text("Gênero")) {
//                    ForEach(genderOptions, id: \.name) { option in
//                        Text(option.name).tag(option)
//                    }
//                }
//                .pickerStyle(.automatic)
//                
//                Picker(selection: $selectedSpecies, label: Text("Espécies")) {
//                    ForEach(speciesOptions, id: \.name) { option in
//                        Text(option.name).tag(option)
//                    }
//                }
//                .pickerStyle(.automatic)
//                
//                Picker(selection: $selectedRace, label: Text("Raça")) {
//                    ForEach(raceOptions, id: \.name) { option in
//                        Text(option.name).tag(option)
//                    }
//                }
//                .pickerStyle(.automatic)
//                
//                HStack(spacing: 20){
//                    Text("Nascimento")
//                    
//                    DatePicker("Nascimento", selection: $selectedDate, in: ...Date(), displayedComponents: .date)
//                        .labelsHidden()
//                        .datePickerStyle(DefaultDatePickerStyle())
//                        .frame(height: 10)
//                        .environment(\.locale, Locale(identifier: "pt_Br"))
//                    Button(action: {
//                        
//                        print("Data de nascimento selecionada: \(selectedDate)")
//                    }) {
//                        Spacer()
//                        
//                    }
//                    
//                }
//                
//            }
//            .scrollContentBackground(.hidden)
//            List {
//                HStack{
//                    Text("Peso")
//                    Spacer()
//                    Rectangle()
//                    
//                        .overlay{
//                            HStack{
//                                Text("\(kg)")
//                                    .foregroundColor(.black)
//                                Text(",")
//                                    .foregroundColor(.black)
//                                Text("\(gram) kg")
//                                    .foregroundColor(.black)
//                                
//                            }
//                            
//                        }
//                        .frame(width: 90,height: 32)
//                        .foregroundColor(.gray.opacity(0.10))
//                        .cornerRadius(4)
//                    
//                }.padding()
//                
//                HStack(spacing: 150){
//                    Text("Cadastro(a)?")
//                    
//                    
//                    Picker("Opções", selection: $selectedOption) {
//                        ForEach(options, id: \.self) { option in
//                            Text(option)
//                        }
//                    }
//                    .pickerStyle(DefaultPickerStyle())
//                    .labelsHidden()
//                }
//                
//                Button(action: {
//                    
//                    print("Opção selecionada: \(selectedOption)")
//                }) {
//                    
//                }
//            }
//            .scrollContentBackground(.hidden)
//            Spacer()
//        }
//        
//    }
//    
//}
//
//struct Adicionar_Previews: PreviewProvider {
//    static var previews: some View {
//        AdicionarView()
//    }
//}
