//
//  ContentView.swift
//  Week05-Lev
//
//  Created by Levitia on 04/03/2023.
//

import SwiftUI
//import AVKit
//import AVFoundation

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Profile here")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

