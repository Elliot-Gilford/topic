//
//  AddView.swift
//  NoteTestUI
//
//  Created by Elliot on 2023-05-28.
//



import SwiftUI
import Introspect

struct AddView: View {
//    let timeFrames: [String] = ["Today", "Week", "Month", "Year", "More"]
    let buttons: [String] = ["Story", "To Do", "Idea", "Media", "Games"]
    @State private var textEntry: String = ""
    @FocusState private var isTextEntryFocused: Bool
    @State private var selectedDuration: Int = 0
    
    let timeFrames: [String] = ["Day", "Week", "Month", "Year"]
    @State private var selectedTimeFrame: Int = 0 // State variable for selected time frame


    
    
//---------
//  Below is old code used for initialising the timeframe slide that is in a separate window.
//    let timeFrames: [String] // Declare timeFrames here
//    let timeFrames: [String]
      
//      init(timeFrames: [String]) { // Initialize timeFrames in the init method
//          self.timeFrames = timeFrames
//      }
//--------
    
    
    
    var body: some View {
        VStack(spacing: 0) {
            // Content specific to the "Add" tab

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
            
            TextEditor(text: $textEntry)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .keyboardType(.default)
                .background(Color.white)
                .foregroundColor(.black)
                .border(Color.clear, width: 0) // Set the border color to clear and width to 0
                .cornerRadius(8) // Optional: Add corner radius for a rounded appearance
                .autocapitalization(.sentences)
                .disableAutocorrection(true)
                .introspectTextView { textView in
                                    textView.becomeFirstResponder() // Set the text view as the first responder to open the keyboard
                                }
            
            HStack {
                
                    
                            Button(action: {
                                // Handle add picture icon tap
                            }) {
                                Image(systemName: "photo")
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            .padding(.leading)

                            Button(action: {
                                // Handle record voice note icon tap
                            }) {
                                Image(systemName: "mic")
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Spacer()
                            .padding(.trailing)
                
                            Button(action: {
                                // Handle "Done" button tap
                            }) {
                                Text("Done")
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.yellow)
                                    .cornerRadius(8)
                            }
                
                            
                        }
            .padding(.trailing)
//            .padding(.top, 0)
//            .padding(.bottom, -10)
            
                        
//            TimeFrameSlider(selectedDuration: $selectedDuration)
            // Time Frame Picker
                        Picker("Select Time Frame", selection: $selectedTimeFrame) {
                            ForEach(0..<timeFrames.count, id: \.self) { index in
                                Text(self.timeFrames[index]).tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle()) // Using a segmented style for the picker
                        .padding()
            
        }
    }
}
