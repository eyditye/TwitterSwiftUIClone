//
//  MessageInputView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 19/02/22.
//

import SwiftUI

struct MessageInputView: View {
    @Binding var messageText: String
    var body: some View {
        HStack{
            TextField("Message...", text: $messageText)
                .frame(minHeight: 30)
            Button(action: {}, label: {
                Text("Send")
            })
        }
    }
}

struct MessageInputView_Previews: PreviewProvider {
    static var previews: some View {
        MessageInputView(messageText: .constant("Message.."))
    }
}
