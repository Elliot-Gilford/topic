//
//  ViewTab.swift
//  NoteTestUI
//
//  Created by Elliot on 2023-05-28.
//

import SwiftUI

struct ViewTab: View {
    let buttons: [String] = ["All", "Today", "Week", "Month", "Year", "More"]
    let areas: [String] = ["| Story", "| To Do", "| Idea", "| Media", "| Games"]
    
    var body: some View {
        VStack(spacing: 10) {
            // Content specific to the "Add" tab
//            Spacer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(buttons, id: \.self) { buttonTitle in
                        Button(action: {
                            // Handle button tap
                        }) {
                            Text(buttonTitle)
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15) // Adjust horizontal padding to desired value
                                .background(Color.black)
                                .clipShape(Capsule()) // Use Capsule shape instead of Circle
                        }
                    }
                }
                .padding(.horizontal)
            }
            Spacer()
         
//                .padding(.bottom, 250)
            
            // Stacked carousels for each area
                  ScrollView {
                      VStack(spacing: 10) {
                          ForEach(areas, id: \.self) { area in
                              VStack(alignment: .leading, spacing: 10) {
                                  Text(area)
                                      .font(.headline)
                                  
                                  ScrollView(.horizontal, showsIndicators: false) {
                                      LazyHStack(spacing: 10) {
                                          // Story cards for the area
                                          ForEach(0..<3) { _ in
                                              StoryCard()
                                          }
                                      }
                                      .padding(.horizontal)
                                  }
                              }
                              .padding()
                              .background(Color.white)
                              .cornerRadius(8)
                          }
                      }
                      .padding(.horizontal)
                  }
              }
          }
      }

struct ViewTab_Previews: PreviewProvider {
    static var previews: some View {
        ViewTab()
    }
}
