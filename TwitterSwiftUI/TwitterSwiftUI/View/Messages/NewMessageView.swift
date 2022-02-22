//
//  NewMessageView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 20/02/22.
//

import SwiftUI

struct NewMessageView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var startChat : Bool
    @State var searchText = ""
    var body: some View {
        
        ScrollView{
            SearchBar(text: $searchText)
            
            VStack(alignment: .leading){
                ForEach(0..<10) { _ in
                    Button(action: {
                        dismiss()
                        startChat.toggle()
                    }, label: { UserCell()
                    })
                }
            }
        }
        .navigationTitle("Explore")
    }
}

struct NewMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NewMessageView(startChat: .constant(true))
    }
}
