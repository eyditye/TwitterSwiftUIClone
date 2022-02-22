//
//  SearchView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 18/02/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText)
            
            VStack(alignment: .leading){
                ForEach(0..<10) { _ in
                    NavigationLink(
                        destination: UserProfileView(),
                        label: {
                        UserCell()
                    })
                }
            }
        }
        .navigationTitle("Explore")
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
