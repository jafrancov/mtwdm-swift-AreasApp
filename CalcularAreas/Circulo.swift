//
//  Circulo.swift
//  CalcularAreas
//
//  Created by Alejandro Franco on 22/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import SwiftUI

struct Circulo: View {
    @State var radio = ""
    
    var area: Double{
        let medidaRadio = Double(radio) ?? 0
        let totalArea =  pow(medidaRadio, 2) * Double.pi
        return totalArea
    }
   
    var body: some View {
        Group{
            Image("circulo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 180.0, alignment: .center)
            
            Form{
                Section(header: Text("Datos de Entrada")){
                    Text("Medida del radio")
                    TextField("Radio", text: $radio)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("Área del círculo"))
        }
    }
}
