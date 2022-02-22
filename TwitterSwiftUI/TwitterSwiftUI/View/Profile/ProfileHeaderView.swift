//
//  ProfileHeaderView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 21/02/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack{
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120/2)
                .shadow(color: .black, radius: 5, x: 0, y: 0)
            Text("Bruce Wayne")
                .font(.system(size: 16,weight: .semibold))
                .padding(.top, 8)
            Text("@batman2021")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Billionare by day, dark knight by night")
                .padding(.top, 5)
            HStack(spacing: 32){
                VStack{
                    Text("0")
                        .font(.system(size: 16, weight: .bold))
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                VStack{
                    Text("1")
                        .font(.system(size: 16, weight: .bold))
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            .padding()
            ProfileActionButtonView(isCurrentUser: false)
            Spacer()
        }
        
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
