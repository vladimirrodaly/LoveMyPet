//
//  ViewControler.swift
//  Love_MyPet
//
//  Created by userext on 04/07/23.
//

import SwiftUI

import SwiftUI

struct ViewControler: View {
    var body: some View {
        ZStack {
            Color("Blue")
                .edgesIgnoringSafeArea(.all)
            
            Image("logo1")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct ViewControler_Previews: PreviewProvider {
    static var previews: some View {
        ViewControler()
    }
}
