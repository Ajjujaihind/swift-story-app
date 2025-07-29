//
//  HomeView.swift
//  StoryApp
//
//  Created by Ajay kumar on 29/07/25.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab : Tab = .all
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack
                {segmentControl(selectedTab: $selectedTab)
                    BookView(selectedTab: $selectedTab)
                    
                }
            }
        }
  
    }
}

#Preview {
    HomeView()
}
