//
//  teste.swift
//  LoveMyPet
//
//  Created by userext on 25/07/23.
//

//
//  PetsView.swift
//  Love_MyPet
//
//  Created by userext on 05/07/23.
//

import SwiftUI

struct ContenteView: View {
    @State private var images: [String] = []
    @State private var selectedImage: String = ""

    var body: some View {
        VStack {
            Text("Imagens no Diretório:")
                .font(.headline)
                .padding()

            List(images, id: \.self, rowContent: { imageName in
                Button(action: {
                    selectedImage = imageName
                }) {
                    Text(imageName)
                }
            })
            .padding()

            Divider()

            if !selectedImage.isEmpty {
                Image(selectedImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        }
        .onAppear(perform: {
            fetchImages()
        })
    }

    private func fetchImages() {
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let folderPath = URL(fileURLWithPath: path)

        do {
            let items = try fileManager.contentsOfDirectory(atPath: folderPath.path)

            images = items.filter { item in
                item.hasSuffix(".jpg") || item.hasSuffix(".jpeg") || item.hasSuffix(".png") || item.hasSuffix(".gif") || item.hasSuffix(".bmp")
            }
        } catch {
            print("Erro ao buscar as imagens: \(error)")
        }
    }
}

struct ContenView_Previews: PreviewProvider {
    static var previews: some View {
        ContenteView()
    }
  
}
