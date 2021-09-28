//
//  ColorView.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

struct ColourView: View {
    
    var colour: Colour
    var pallete: String
    
    var body: some View {
        ZStack {
            colour.colour
            VStack {
                Text(colour.name)
                    .font(.largeTitle)
                    .foregroundColor(colour.dark ? .white : .black)
                Text(pallete)
                    .font(.largeTitle)
                    .foregroundColor(colour.dark ? .white : .black)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Color", displayMode: .inline)
            .navigationBarColor(UIColor(.black), UIColor(.white))
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Text(colour.name)
                    .font(.title)
                    .foregroundColor(.white)
            })
        })
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColourView(colour: Colour.Alizarin, pallete: "American")
    }
}
