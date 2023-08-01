//
//  Inicio.swift
//  Love
//
//  Created by IOSI on 04/07/23.
//

import SwiftUI

struct Inicio: View {
    var body: some View {
        
        VStack{
            Spacer()
            Image("lovepet")
                .resizable()
                .frame(width: 220, height: 290)
                .padding(.top)
            VStack {
                
                Text("Cadastre seu Pet")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                VStack(spacing: 30){
                    
                    Text("Tenha as informações do seu pet e todo histórico para consultas faturas.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                      
                    HStack{
                        
                       Circle()
                        
                            .frame(width: 20, height: 10)
                            .foregroundColor(Color("Blue"))
                            .padding(.top,10)
                              
                        Circle()
                        
                             .frame(width: 20, height: 10)
                             .foregroundColor(Color("Green"))
                             .padding(.top,10)
                        
                        Circle()
                        
                             .frame(width: 20, height: 10)
                             .foregroundColor(Color("Green"))
                             .padding(.top,10)
                             
                    }
                    HStack (spacing: 15){
                        
                
                        Button(action: {
                           
                            print("Botão Pular pressionado!")
                        }) {
                           
                            Text("Pular")
                                .foregroundColor(Color("Blue"))
                                .font(.title)
                                .frame(width: 65, height: 15)
                                .padding()
                                .padding(.top, -30)
                                
                            Spacer()
                            
        
                        }
                        Button(action: {
                           
                            print("Botão Avançar pressionado!")
                        }) {
                            Text("Avançar")
                                .foregroundColor(.white)
                                .font(.title)
                                .frame(width: 100, height: 15)
                                .padding()
                                .background(Color("Blue"))
                                .cornerRadius(10)
                                .padding(.top, -10)
                            }
                        
                        Spacer()
                       }
                       
                    }
                  
                }
            Spacer()
            }
            
        }
    }
    
    struct Inicio_Previews: PreviewProvider {
        static var previews: some View {
            Inicio()
        }
    }
  
                        
 
