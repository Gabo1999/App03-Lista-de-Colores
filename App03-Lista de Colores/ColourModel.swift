//
//  ColourModel.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

class ColourModel: ObservableObject {
    @Published var flatUI = [Colour]()
    @Published var spanish = [Colour]()
    @Published var american = [Colour]()
    
    init() {
        loadColours()
    }
    
    func loadColours() {
        flatUI.append(contentsOf: Colour.flatUI)
        spanish.append(contentsOf: Colour.spanish)
        american.append(contentsOf: Colour.american)
        
    }
}
