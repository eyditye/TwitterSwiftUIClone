//
//  MessageView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 20/02/22.
//

import SwiftUI

struct MessageView: View {
    let message: MockMessage
    var body: some View {
        HStack{
            if message.isCurrentUser{
                Spacer()
                Text(message.messageText)
                    .padding()
                    .background(Color.blue)
                    .clipShape(ChatBubble(isFromCurrentUser: message.isCurrentUser))
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }else {
                HStack (alignment: .bottom){
                    Image(message.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                    Text(message.messageText)
                        .padding()
                        .background(Color(.systemGray5))
                        .clipShape(ChatBubble(isFromCurrentUser: message.isCurrentUser))
                        .foregroundColor(Color.black)
                }
                .padding(.horizontal)
                Spacer()
            }
            
        }
    }
}


struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(message: MOCK_MESSAGES[0])
    }
}
