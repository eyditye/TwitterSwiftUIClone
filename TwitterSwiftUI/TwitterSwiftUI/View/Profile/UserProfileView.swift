//
//  UserProfileView.swift
//  TwitterSwiftUI
//
//  Created by Aditya Ramadhan on 21/02/22.
//

import SwiftUI

struct UserProfileView: View {
    @State var selectedFilter : TweetFilterOptions = .tweets
    var body: some View {
        ScrollView{
            ProfileHeaderView()
                .padding()
            FilterButtonView(selectedOption: $selectedFilter)
                .padding()
            VStack{
                ForEach(0..<9){ tweet in
                    TweetCell()
                }
            }.padding(.horizontal, 32)
        }
        .navigationTitle("Batman")
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
