//
//  SaveImage.swift
//  LoveMyPet
//
//  Created by userext on 28/07/23.
//
import SwiftUI

struct SaveImage: View {
    var body: some View {
        Text("Gabriel meu fã numero 1") // Você pode substituir esse Text por qualquer conteúdo da sua View.
            .onAppear {
                // Salvar a imagem quando a View aparecer.
                let tempImage = UIImage(named: "nome_da_imagem") // Substitua "nome_da_imagem" pelo nome da imagem que você quer salvar.
                let path = fileInDocumentsDirectory(filename: "abc.png")
                let res = saveImage(image: tempImage, path: path)
                
                if res {
                    print("[+] FILE SAVED")
                } else {
                    print("[-] ERROR SAVING FILE")
                }
                
                let image = UIImage(contentsOfFile: path)
                if image == nil {
                    print("missing image at: \(path)")
                } else {
                    print("!!!IMAGE FOUND at: \(path)")
                }
            }
    }
    
    func saveImage(image: UIImage?, path: String) -> Bool {
        guard let image = image,
              let pngImageData = image.pngData() else {
            return false
        }
        
        print("!!!saving image at:  \(path)")
        
        do {
            try pngImageData.write(to: URL(fileURLWithPath: path))
            return true
        } catch {
            print("Error saving file: \(error)")
            return false
        }
    }
    
    func fileInDocumentsDirectory(filename: String) -> String {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let fileURL = documentsURL.appendingPathComponent(filename).path
        return fileURL
    }
}

struct SaveImage_Previews: PreviewProvider {
    static var previews: some View {
        SaveImage()
    }
}
