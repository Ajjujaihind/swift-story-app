//
//  ContentView.swift
//  StoryApp
//
//  Created by Ajay kumar on 21/07/25.
//

import SwiftUI

struct segmentControl: View {
    @State var selectedTab: Tab = .all
    @State var textWidths: [CGFloat] = Array(repeating: 0, count: Tab.allCases.count)
    @State var indexint: CGFloat = 0
    @State var textWidth: CGFloat = 0
    
    @State var hstatckwidth: CGFloat = 0
    
    var body: some View {
        ScrollViewReader(content: { proxy in
            Text("Placeholder")
        })
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 30) {
                ForEach(Tab.allCases.indices, id: \.self) { index in
                    let tab = Tab.allCases[index]
                    Text(tab.rawValue)
                        .font(.callout)
                        .background(
                            GeometryReader(content: {
                                textGeoWidth -> Color in
                                DispatchQueue.main.async
                                {
                                    textWidths[index] = textGeoWidth.size.width
                                }
                                return Color.clear
                            })
                        ).frame(width: 70 , alignment: .leading).padding(.vertical , 10)
                    
                        .foregroundStyle(selectedTab == tab ? .primary : .secondary).onTapGesture {
                            withAnimation {
                                indexint = CGFloat(index)
                                textWidth = textWidths[index]
                                selectedTab = tab
                            }
                        }
                    
                }
            }.background(GeometryReader(content: {geometry in
                Capsule().foregroundStyle(.gray.opacity(0.3)).frame(width: textWidth+30).offset(x: indexint*100).offset(x: -15)
                
            })).padding(.horizontal, 16)
            
        }.onAppear()
        {
            if textWidth == 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, )
                {
                    textWidth = textWidths[0]
                }
                
            }
        }
    }

}

#Preview {
    segmentControl()
}

enum Tab : String , CaseIterable {
    case all = "All"
    case fiction = "Fiction"
    case mystery = "Mystery"
    case romance = "Romance"
    case action = "Action"
    case comedy = "Comedy"
}
