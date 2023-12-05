//
//  TabHeaderView.swift
//  NoteTestUI
//
//  Created by Elliot on 2023-05-28.
//

import SwiftUI

enum Tab {
    case add
    case view
}

struct TabHeaderView: View {
    @Binding var selectedTab: Tab
    
    

    var body: some View {
        HStack(spacing: 20) {
            Button(action: {
                selectedTab = .add
            }) {
                Text("Add")
                    .font(selectedTab == .add ? .headline.bold() : .headline) // Use bold font for the selected tab
                    .foregroundColor(selectedTab == .add ? .black : .gray) // Change selected tab text color to black
                    .underline(selectedTab == .add, color: .black) // Underline the selected tab with black color
            }

            Button(action: {
                selectedTab = .view
            }) {
                Text("View")
                    .font(selectedTab == .view ? .headline.bold() : .headline) // Use bold font for the selected tab
                    .foregroundColor(selectedTab == .view ? .black : .gray) // Change selected tab text color to black
                    .underline(selectedTab == .view, color: .black) // Underline the selected tab with black color
            }
        }
        .padding(.horizontal)
        .padding(.top, 20)
        .padding(.bottom, 30) // Increase bottom padding to add more space between tab selection and buttons
        .animation(.easeInOut)
    }
}

