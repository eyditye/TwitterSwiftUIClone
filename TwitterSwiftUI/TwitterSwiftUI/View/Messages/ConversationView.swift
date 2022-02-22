//
//  ConversationView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 18/02/22.
//

import SwiftUI

struct ConversationView: View {
    @State var isShowingNewMessageView = false
    @State var showChat = false
    @State var isShowingNew2MessageView = false
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            
            ScrollView{
                VStack{
                    ForEach(0..<19) {
                        _ in
                        NavigationLink(
                            destination: ChatView(),
                            label: {
                            ConversationCell()
                        })
                    }
                }
            }
            NavigationLink(destination: ChatView(), isActive: $showChat, label: {})

            Button(action: {self.isShowingNewMessageView.toggle()}, label: {
                Image(systemName: "envelope")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
            })
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .sheet(isPresented: $isShowingNewMessageView
                       , content: {NewMessageView(startChat: $showChat)
                })
        }
        .navigationTitle("Messages")
    }
}

struct ConversationView_Previews: PreviewProvider {
    static var previews: some View {
        ConversationView()
    }
}
