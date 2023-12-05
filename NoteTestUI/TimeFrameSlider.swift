import SwiftUI

struct TimeFrameSlider: View {
//    let timeFrames: [String]
        let timeFrames: [String] = ["Today", "Week", "Month", "Year", "More"]
    @Binding var selectedDuration: Int

    var body: some View {
        VStack(spacing: 100) {
            ZStack {
//                padding(.top, 100)
                GeometryReader { geometry in
                    Path { path in
                        let dotWidth: CGFloat = 10
                        let dotHeight: CGFloat = 10
                        let startPoint = CGPoint(x: geometry.frame(in: .local).minX + dotWidth/2, y: geometry.frame(in: .local).midY)
                        let endPoint = CGPoint(x: geometry.frame(in: .local).maxX - dotWidth/2, y: geometry.frame(in: .local).midY)

                        path.move(to: startPoint)
                        path.addLine(to: endPoint)
                    }
                    .stroke(Color.gray, lineWidth: 1)
                    .zIndex(-1) // Place the line behind other views
                }
                
                HStack {
                    Spacer()
                    ForEach(0..<timeFrames.count, id: \.self) { index in
                        let isSelected = index == selectedDuration
                        let circleSize: CGFloat = isSelected ? 16 : 10

                        Circle()
                            .fill(isSelected ? Color.yellow : Color.white)
                            .frame(width: circleSize, height: circleSize)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 1)
                            )
                            .padding(.vertical, 4)
                        
                        Spacer()
                    }
                }
                
//                padding(.bottom, 10)
            }
            
            HStack(spacing: 0) {
                ForEach(0..<timeFrames.count, id: \.self) { index in
                    Text(timeFrames[index])
                        .font(.caption)
                        .foregroundColor(.gray)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .padding()
    }
}


////
////  TimeFrameSlider.swift
////  NoteTestUI
////
////  Created by Elliot on 2023-05-28.
////
//
//import SwiftUI
////
//struct TimeFrameSlider: View {
//    let timeFrames: [String] = ["Today", "Week", "Month", "Year", "More"]
//    @Binding var selectedDuration: Int
//
//    var body: some View {
//        VStack(spacing: 10) {
//            ZStack {
//                GeometryReader { geometry in
//                    Path { path in
//                        let dotWidth: CGFloat = 10
//                        let dotHeight: CGFloat = 10
//                        let startPoint = CGPoint(x: geometry.frame(in: .local).minX + dotWidth/2, y: geometry.frame(in: .local).midY)
//                        let endPoint = CGPoint(x: geometry.frame(in: .local).maxX - dotWidth/2, y: geometry.frame(in: .local).midY)
//
//                        path.move(to: startPoint)
//                        path.addLine(to: endPoint)
//                    }
//                    .stroke(Color.gray, lineWidth: 1)
//                    .zIndex(-1) // Place the line behind other views
//                }
//                
//                HStack {
//                    Spacer()
//                    ForEach(0..<timeFrames.count, id: \.self) { index in
//                        let isSelected = index == selectedDuration
//                        let circleSize: CGFloat = isSelected ? 16 : 10
//
//                        Circle()
//                            .fill(isSelected ? Color.yellow : Color.white)
//                            .frame(width: circleSize, height: circleSize)
//                            .overlay(
//                                Circle().stroke(Color.gray, lineWidth: 1)
//                            )
//                            .padding(.vertical, 4)
//                        
//                        Spacer()
//                    }
//                }
//            }
//            
//            HStack() {
//                
//                ForEach(0..<timeFrames.count, id: \.self) { index in
//                    Spacer()
//                    Text(timeFrames[index])
//                        .font(.caption)
//                        .foregroundColor(.gray)
//                        .frame(maxWidth: .infinity)
//                    Spacer()
//                }
//            }
//        }
//        .padding()
//    }
//}
