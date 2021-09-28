//
//  ColourDetailView.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

struct ColourDetailView: View {
    var body: some View {
        Text("Detalle del color")
            .navigationBarTitle("Detalle Color", displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor(.white))
    }
}

struct ColourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColourDetailView()
    }
}
