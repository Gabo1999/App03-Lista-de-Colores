//
//  ColourDetailView.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

struct ColourDetailView: View {
    var colour: Colour
    var body: some View {
        ZStack {
            Color(colour.dark ? .black : .white)
            if (colour.dark) {
                Text("Detalle del color: Dark")
                    .font(.PTSerif(style: "Bold", size: 24))
                    .foregroundColor(.white)
            }
            else {
                Text("Detalle del color: Light")
                    .font(.PTSerif(style: "Bold", size: 24))
                    .foregroundColor(.black)
            }
        }
        .navigationBarTitle("Detalle Color", displayMode: .inline)
        .navigationBarColor(UIColor(.green), UIColor(.white))
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Text("Detalle Color")
                    .modifier(TitleModifier())
                    .foregroundColor(.white)
            })
        })
    }
}

struct ColourDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ColourDetailView(colour: Colour.Alizarin)
    }
}
