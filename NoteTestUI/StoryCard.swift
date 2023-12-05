//
//  StoryCard.swift
//  NoteTestUI
//
//  Created by Elliot on 2023-06-17.
//

import SwiftUI

struct StoryCard: View {
    var body: some View {
        VStack(spacing: 10) {
            Image("story-image")
                Color.gray
//                .resizable()
//                .aspectRatio(contentMode: .fit)
                .frame(height: 120)
            
            Text("Title")
                .font(.headline)
            
            Text("Description")
                .font(.subheadline)
                .lineLimit(2)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(8)
    }
}
