import SwiftUI

struct CadastroView: View {
    @State private var selectedOption = "Sim"
    private let options = ["Sim", "Não"]
    
    var body: some View {
        VStack {
            
            
            HStack {
                List{
                    Text("Cadastro(a)?")
                    
                    
                    Picker("Opções", selection: $selectedOption) {
                        ForEach(options, id: \.self) { option in
                            Text(option)
                        }
                    }
                    
                    .pickerStyle(.menu)
                    .labelsHidden()
                }
                
                Button(action: {
                    print("Opção selecionada: \(selectedOption)")
                }) {
                    
                    }
                }
            }
        }
    }

struct CadastroView_Previews: PreviewProvider {
    static var previews: some View {
        CadastroView()
    }
}
