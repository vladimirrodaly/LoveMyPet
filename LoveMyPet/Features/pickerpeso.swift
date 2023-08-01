////
////  pickerpeso.swift
////  Love_MyPet
////
////  Created by userext on 06/07/23.
////
//import SwiftUI
//import UIKit
//
//struct PhotoPickerView: View {
//    @State private var selectedImage: Image?
//
//    var body: some View {
//        VStack {
//            Button(action: {
//                self.showImagePicker()
//            }) {
//                Text("Choose Photo")
//            }
//            selectedImage?
//                .resizable()
//                .scaledToFit()
//        }
//    }
//
//    func showImagePicker() {
//        let imagePicker = UIImagePickerController()
//       // imagePicker.delegate = context.coordinator
//        imagePicker.sourceType = .photoLibrary
//        UIApplication.shared.windows.first?.rootViewController?.present(imagePicker, animated: true, completion: nil)
//    }
//}
//
//
//
//struct ContentView: View {
//    var body: some View {
//        PhotoPickerView()
//    }
//}
