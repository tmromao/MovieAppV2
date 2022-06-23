//
//  View+Extensions.swift
//  MovieApp
//
//  Created by Tiago Miguel de Jesus Romao on 23/06/2022.
//
import Foundation
import SwiftUI

extension View {
    func embedInNavigationView() -> some View {
        NavigationView { self }
    }
}
