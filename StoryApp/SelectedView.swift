//
//  SelectedView.swift
//  StoryApp
//
//  Created by Ajay kumar on 29/07/25.
//

import SwiftUI

struct SelectedView: View {
    var thebook: Book
    var body: some View {
        Text(thebook.title)
    }
}

