//
//  AddMovieScreen.swift
//  MovieApp
//
//  Created by Tiago Miguel de Jesus Romao on 23/06/2022.
//

import SwiftUI

struct AddMovieScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var title: String = ""
    @State private var director: String = ""
    @State private var releaseDate: Date = Date()
    @State private var rating: Int? = nil
    
    var body: some View {
        Form{
            TextField("Enter name", text: $title)
            TextField("Enter director", text: $director)
            HStack{
                Text("Rating")
                Spacer()
                RatingView(rating: $rating)
            }
            DatePicker("Release Date", selection: $releaseDate)
            
            HStack{
                Spacer()
                Button("Save"){
                    
                }
                Spacer()
            }
        }
        .navigationTitle("Add Movie")
        .embedInNavigationView()
    }
}

struct AddMovieScreen_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieScreen()
    }
}
