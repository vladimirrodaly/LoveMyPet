//
//  Next Screen.swift
//  Love
//
//  Created by IOSI on 04/07/23.
//

import SwiftUI

struct ScreenControler: View {
    var body: some View {
        ZStack {
            Color("Blue")
                .edgesIgnoringSafeArea(.all)
            
            Image("logo2")
                .foregroundColor(.white)
                .font(.largeTitle)
        }
    }
}

struct ScreenControler_Previews: PreviewProvider {
    static var previews: some View {
        ScreenControler()
    }
}
