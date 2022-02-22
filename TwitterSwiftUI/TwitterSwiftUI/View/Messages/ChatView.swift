//
//  ChatView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 19/02/22.
//

import SwiftUI

struct ChatView: View {
    @State var messageText: String = ""
    var body: some View {
        VStack{
            ScrollView{
                VStack (alignment: .leading, spacing: 12){
                    ForEach(MOCK_MESSAGES){ message in
                        MessageView(message: message)
                    }
                }
            }
            .padding(.top)
            MessageInputView(messageText: $messageText)
                .padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

