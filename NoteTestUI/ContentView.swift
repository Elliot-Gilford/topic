import SwiftUI

struct ContentView: View {
    @State private var selectedTab: Tab = .add
    
    let timeFrames: [String] = ["Today", "Week", "Month", "Year", "More"] // Declare and initialize the timeFrames array

    
    var body: some View {
        VStack(spacing: 0) {
            TabHeaderView(selectedTab: $selectedTab)
            
            if selectedTab == .add {
                AddView()
            } else if selectedTab == .view {
                ViewTab()
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

