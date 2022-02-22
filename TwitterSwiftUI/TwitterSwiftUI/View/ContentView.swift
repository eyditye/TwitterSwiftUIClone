//
//  ContentView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 17/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
                
            TabView {
                FeedView()
                    .tabItem{
                        Image(systemName:  "house")
                        Text("Home")
                    }
                SearchView()
                    .tabItem{
                        Image(systemName:"magnifyingglass")
                        Text("Search")
                    }
                ConversationView()
                    .tabItem{
                        Image(systemName :"envelope")
                        Text("Messages")
                    }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
