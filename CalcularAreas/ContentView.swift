//
//  ContentView.swift
//  CalcularAreas
//
//  Created by Alejandro Franco on 22/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: Triangulo()){
                    HStack{
                        Image("triangulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Área del Triangulo")
                    }
                }
                NavigationLink(destination: Circulo()){
                    HStack{
                        Image("circulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Área del Circulo")
                    }
                }
                NavigationLink(destination: Cuadrado()){
                    HStack{
                        Image("cuadrado")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Area del Cuadrado")
                    }
                }
            }.navigationBarTitle(Text("Areas APP"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
