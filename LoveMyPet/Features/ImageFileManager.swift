//
//  ImageFileManager.swift
//  LoveMyPet
//
//  Created by userext on 21/07/23.
//
//
//  ImageFileManager.swift
//  Love
//
//  Created by IOSI on 21/07/23.
//

import SwiftUI

class ImageFileManager: ObservableObject {
    @Published var images: [UIImage] = []
    
    init() {
        loadImagesFromDocumentsDirectory()
    }
    
    func loadImagesFromDocumentsDirectory() {
        let fileManager = FileManager.default
        guard let documentsURL = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return
        }
        
        do {
            let fileURLs = try fileManager.contentsOfDirectory(at: documentsURL, includingPropertiesForKeys: nil, options: .skipsHiddenFiles)
            
            for fileURL in fileURLs {
                if let data = try? Data(contentsOf: fileURL), let image = UIImage(data: data) {
                    images.append(image)
                }
            }
        } catch {
            print("Error while enumerating files from documents directory: \(error.localizedDescription)")
        }
    }
}

import SwiftUI

struct ImageFileManagerView: View {
    @ObservedObject var imageFileManager = ImageFileManager()
    
    var body: some View {
        VStack {
            ForEach(imageFileManager.images, id: \.self) { image in
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
        }
        .padding()
    }
}

struct ImageFileManagerView_Previews: PreviewProvider {
    static var previews: some View {
        ImageFileManagerView()
    }
}
