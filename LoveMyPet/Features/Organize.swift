//
//  Organize.swift
//  Love
//
//  Created by IOSI on 04/07/23.


        import SwiftUI

        struct Organize: View {
            var body: some View {
                
                
                VStack{
                    
                    Image("organize")
                        .resizable()
                        .frame(width: 200, height: 350)
                        .padding(.top)
                    VStack {
                        
                        Text("Organize rotinas")
                            .foregroundColor(.black)
                            .font(.title)
                            .fontWeight(.bold)
                        VStack{
                            
                            Text("Organize as rotinas dos seus pets. Crie tarefas e as visualize em um calendário ")
                                .multilineTextAlignment(.center)
                                .padding(.horizontal)
                            
                            
                            HStack{
                                
                                Circle()
                                    .frame(width: 30, height: 10)
                                    .foregroundColor(Color("Green"))
                                    .padding(.top,20)
                                
                                Circle()
                                    .frame(width: 30, height: 10)
                                    .foregroundColor(Color("Green"))
                                    .padding(.top,20)
                                
                                Circle()
                                    .frame(width: 30, height: 10)
                                    .foregroundColor(Color("Blue"))
                                    .padding(.top,20)
                                
                            }
                            
                            HStack{
                                
                                Spacer()
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
                                        .padding()
                                    
                                }
                                
                                
                            }
                            .padding()
                        }
                        
                    }
                }
                
                
            }
            
            
            struct Organize_Previews: PreviewProvider {
                static var previews: some View {
                    Organize()
                }
            }
            
        }
    
    struct Organize_Previews: PreviewProvider {
        static var previews: some View {
            Organize()
        }
    }

