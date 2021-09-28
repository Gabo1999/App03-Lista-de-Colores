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
                NavigationLink(
                    destination: ColourDetailView(colour: colour),
                    label: {
                        HStack {
                            Text(colour.name)
                                .font(.PTSerif(style: "Bold", size: 24))
                                .foregroundColor(colour.dark ? .white : .black)
                            Text(pallete)
                                .font(.PTSerif(style: "Bold", size: 24))
                                .foregroundColor(colour.dark ? .white : .black)
                        }
                })
            }
        }
        .edgesIgnoringSafeArea(.bottom)
            .navigationBarTitle("Color", displayMode: .inline)
        .navigationBarColor(UIColor(colour.colour), UIColor(.white))
        .toolbar(content: {
            ToolbarItem(placement: .principal, content: {
                Text(colour.name)
                    .modifier(TitleModifier())
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
