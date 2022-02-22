//
//  ConversationCell.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 18/02/22.
//

import SwiftUI

struct ConversationCell: View {
    var body: some View {
        VStack {
            HStack(spacing: 12){
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                VStack (alignment: .leading, spacing: 4){
                    Text("batman")
                        .font(.system(size: 14, weight: .semibold))
                    Text("Longer messages to see what's going on in this view")
                        .font(.system(size: 14))
                        .lineLimit(2)
                }
                .padding(.trailing)
                .foregroundColor(.black)
            }
            Divider()
        }
        
    }
}

struct ConversationCell_Previews: PreviewProvider {
    static var previews: some View {
        ConversationCell()
    }
}
