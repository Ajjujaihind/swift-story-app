//
//  DataManager.swift
//  StoryApp
//
//  Created by Ajay kumar on 29/07/25.
//

import Foundation

struct Category {
    var name: String
    var books: [Book]
}

struct Book {
    var title: String
    var imageName: String
    var rating: Double
    var description: String
    var story: String
}

class DataManager {
    static let shared = DataManager()
    
    let categories: [Category] = [
        Category(name: "All", books: [
            Book(title: "Silent Mode", imageName: "04", rating: 4.5, description: "A thrilling story about a hacker who goes silent", story: "Once upon a time in the digital world..."),
            Book(title: "The Mystery Mansion", imageName: "01", rating: 4.2, description: "A haunted house with dark secrets", story: "The old mansion on the hill had been abandoned for years..."),
            Book(title: "Love in Paris", imageName: "02", rating: 4.7, description: "A romantic tale set in the city of love", story: "The Eiffel Tower sparkled as Emma walked along the Seine..."),
            Book(title: "Action Hero", imageName: "03", rating: 4.3, description: "High-octane adventures of a special agent", story: "The bomb was set to explode in 30 seconds..."),
            Book(title: "The Funny Detective", imageName: "05", rating: 4.0, description: "A hilarious take on crime solving", story: "It was the worst crime scene I'd ever seen - mainly because I'd caused it...")
        ]),
        
        Category(name: "Fiction", books: [
            Book(title: "Silent Mode", imageName: "04", rating: 4.5, description: "A thrilling story about a hacker who goes silent", story: "Once upon a time in the digital world..."),
            Book(title: "The Last Kingdom", imageName: "06", rating: 4.6, description: "Epic tale of kingdoms at war", story: "The banners flew high as the armies gathered...")
        ]),
        
        Category(name: "Mystery", books: [
            Book(title: "The Mystery Mansion", imageName: "01", rating: 4.2, description: "A haunted house with dark secrets", story: "The old mansion on the hill had been abandoned for years..."),
            Book(title: "The Vanishing Case", imageName: "07", rating: 4.1, description: "A detective's most puzzling case", story: "The victim disappeared from a locked room...")
        ]),
        
        Category(name: "Romance", books: [
            Book(title: "Love in Paris", imageName: "02", rating: 4.7, description: "A romantic tale set in the city of love", story: "The Eiffel Tower sparkled as Emma walked along the Seine..."),
            Book(title: "Summer Love", imageName: "08", rating: 4.4, description: "A beachside romance that changes everything", story: "The waves crashed as their eyes met for the first time...")
        ]),
        
        Category(name: "Action", books: [
            Book(title: "Action Hero", imageName: "03", rating: 4.3, description: "High-octane adventures of a special agent", story: "The bomb was set to explode in 30 seconds..."),
            Book(title: "War Zone", imageName: "09", rating: 4.8, description: "A soldier's journey through enemy territory", story: "Bullets whizzed past as he dove for cover...")
        ]),
        
        Category(name: "Comedy", books: [
            Book(title: "The Funny Detective", imageName: "05", rating: 4.0, description: "A hilarious take on crime solving", story: "It was the worst crime scene I'd ever seen - mainly because I'd caused it..."),
            Book(title: "Office Fiasco", imageName: "10", rating: 3.9, description: "Workplace comedy about the worst office ever", story: "The printer was on fire again, which was actually an improvement...")
        ])
    ]
    
    var mostreadBook: [Book] = [
        Book(title: "Silent Mode", imageName: "04", rating: 4.5, description: "A thrilling story about a hacker who goes silent", story: "Once upon a time in the digital world..."),
        Book(title: "Love in Paris", imageName: "02", rating: 4.7, description: "A romantic tale set in the city of love", story: "The Eiffel Tower sparkled as Emma walked along the Seine..."),
        Book(title: "The Mystery Mansion", imageName: "01", rating: 4.2, description: "A haunted house with dark secrets", story: "The old mansion on the hill had been abandoned for years..."),
        Book(title: "War Zone", imageName: "09", rating: 4.8, description: "A soldier's journey through enemy territory", story: "Bullets whizzed past as he dove for cover...")
    ]
    
}
