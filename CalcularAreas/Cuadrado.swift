//
//  Cuadrado.swift
//  CalcularAreas
//
//  Created by Alejandro Franco on 22/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import SwiftUI

struct Cuadrado: View {
    @State var base = ""
    
    var area: Double{
        let medidaBase   = Double(base) ?? 0
        let totalArea =  medidaBase * medidaBase
        return totalArea
    }
    
    var body: some View {
        Group{
            Image("cuadrado")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 180.0, alignment: .center)
            
            Form{
                Section(header: Text("Datos de Entrada")){
                    Text("Medida de la base")
                    TextField("Base:", text: $base)
                    .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("Área del cuadrado"))
        }
    }
}
