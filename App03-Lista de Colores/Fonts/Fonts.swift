//
//  Fonts.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("PTSerif-Regular", size: 20 ))
            .foregroundColor(.white)
    }
}

struct TitleModifier: ViewModifier {
func body(content: Content) -> some View {
    content
        .font(.custom("PTSerif-Bold", size: 32 ))
        .foregroundColor(.black)
}
}

extension Font {
    public static func PTSerif(style: String, size: CGFloat) -> Font {
        return Font.custom("PTSerif-\(style)", size: size)
    }
}
