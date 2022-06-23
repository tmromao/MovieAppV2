//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Tiago Miguel de Jesus Romao on 23/06/2022.
//

import SwiftUI

struct MovieListScreen: View {
    
    @State private var isPresented: Bool = false
    
    var body: some View {
        List{
            Text("Movies")
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Movies")
        .navigationBarItems(trailing: Button("Add Movie"){
            isPresented = true
        })
        .sheet(isPresented: $isPresented, onDismiss: {
            
        }, content: {
            AddMovieScreen()
        })
        .embedInNavigationView()
        
        .onAppear(perform:{
            
        })
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
