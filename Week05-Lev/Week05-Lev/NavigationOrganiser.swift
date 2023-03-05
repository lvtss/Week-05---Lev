//
//  NavigationOrganiser.swift
//  Week05-Lev
//
//  Created by Levitia on 04/03/2023.
//

import Foundation
import SwiftUI


struct NavigationOrganiser: View {
    let names = ["Family", "Travel", "Food", "State Parks", "Pets"]
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink {
                        Text(name)
                    } label: {
                        Text(name)
                    }
                }
            }
            .navigationTitle("Home")
        }
        .searchable(text: $searchText)
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}

    struct NavigationOrganiser_View: PreviewProvider {
        static var previews: some View {
            NavigationOrganiser()
        }
    }


