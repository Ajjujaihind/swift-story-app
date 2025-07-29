//
//  BookView.swift
//  StoryApp
//
//  Created by Ajay kumar on 28/07/25.
//

import SwiftUI

struct Books: View {
    var thebook : Book
    var body: some View {
        Image(thebook.imageName).resizable().scaledToFit().frame(width: 176, height: 260).clipShape(.rect(cornerSize: CGSize(width: 12, height: 12))).overlay(alignment: .bottom, )
        {
            UnevenRoundedRectangle(bottomLeadingRadius: 12, bottomTrailingRadius: 12).frame(height: 40).foregroundStyle(LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .leading, endPoint: .trailing))
            Text(thebook.title).bold().foregroundStyle(.white).frame(width: 140,  alignment: .leading)
        }.overlay(alignment : .topTrailing)
        {
            HStack(spacing: 2)
            {
                Image(systemName: "star.fill").foregroundStyle(.purple)
                Text("\(thebook.rating, specifier: "%.1f")").foregroundStyle(.black)
            }.offset(x: -1)
            .font(.system(size: 12)).frame(width: 45, height:22).background(.white, in:.rect(cornerRadius:20)).padding(12)
        }
    }
}


struct BookView : View {
    @Binding var selectedTab : Tab
    var vm = DataManager.shared
    var currentBook : [Book] {
        if let category  = vm.categories.first(where: {$0.name.lowercased() == selectedTab.rawValue})
        {
            return category.books
    
            
        }else
        {
            return vm.categories.first?.books ?? []
            
        }
    }
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(), count: 2), content: {
            ForEach(currentBook, id: \.title){ book in
                NavigationLink{
                    SelectedView(thebook: book)
                } label :{
                    Books(thebook: book)
                     
                }
               
                
            }
        })
        
    }
}

