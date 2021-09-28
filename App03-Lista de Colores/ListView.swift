//
//  ListView.swift
//  App03-Lista de Colores
//
//  Created by David Josué Marcial Quero on 27/09/21.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var colours = ColourModel()
    @State var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                TextField("Nombre Color", text: $searchText)
                    .font(.PTSerif(style: "Regular", size: 24))
                    .foregroundColor(.black)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .accentColor(.green)
                Section(header:
                            Text("Flat UI")
                            .modifier(TitleModifier())
                            .foregroundColor(.black)
                ) {
                    ForEach(colours.flatUI.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "FlatUI"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                        .font(.PTSerif(style: "Italic", size: 24))
                                }
                        })
                        .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("American")
                            .modifier(TitleModifier())
                            .foregroundColor(.black)
                ) {
                    ForEach(colours.american.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "American"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                        .font(.PTSerif(style: "Italic", size: 24))
                                }
                        })
                        .listRowBackground(colour.colour)
                    }
                }
                Section(header:
                            Text("Spanish")
                            .modifier(TitleModifier())
                            .foregroundColor(.black)
                ) {
                    ForEach(colours.spanish.filter {
                        searchText.isEmpty || $0.name.localizedStandardContains(searchText)
                    }) { colour in
                        NavigationLink(
                            destination: ColourView(colour: colour, pallete: "Spanish"),
                            label: {
                                HStack {
                                    Image(systemName: colour.dark ? "lightbulb.fill" : "lightbulb")
                                    Text(colour.name)
                                        .foregroundColor(colour.dark ? .white : .black)
                                        .font(.PTSerif(style: "Italic", size: 24))
                                }
                        })
                        .listRowBackground(colour.colour)
                    }
                }
            }
            .accentColor(.black)
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Colores", displayMode: .inline)
            .navigationBarColor(UIColor(.green), UIColor(.white))
            .toolbar(content: {
                ToolbarItem(placement: .principal, content: {
                    HStack {
                        Image(systemName: "paintbrush.fill")
                        Text("Colores")
                            .modifier(TitleModifier())
                            .foregroundColor(.white)
                    }
                })
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
