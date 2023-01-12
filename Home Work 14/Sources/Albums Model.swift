//
//  Albums Model.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import Foundation

struct AlbumsModel: Hashable {
    var mainTitle: String?
    var valueOfPhoto: String?
    var image: String
    var numberOfItem: Int?
}

extension AlbumsModel {
    static let modelsArray = [
        [AlbumsModel(mainTitle: "Recent", valueOfPhoto: String(Int.random(in: 4000...10000)), image: "Recent"),
         AlbumsModel(mainTitle: "Favorite", valueOfPhoto: String(Int.random(in: 0...1000)), image: "Favorite"),
         AlbumsModel(mainTitle: "Favorite ScreenShots", valueOfPhoto: String(Int.random(in: 0...1000)), image: "FavoriteScreenshot"),
         AlbumsModel(mainTitle: "For Music", valueOfPhoto: String(Int.random(in: 0...50)), image: "ForMusic"),
         AlbumsModel(mainTitle: "Instagram", valueOfPhoto: String(Int.random(in: 0...1000)), image: "Instagram")
        ],
        [AlbumsModel(mainTitle: "Family", valueOfPhoto: "Created by You", image: "allBooks"),
         AlbumsModel(mainTitle: "Holidays", valueOfPhoto: "Created by Maxim", image: "allBooks"),
         AlbumsModel(mainTitle: "Friends", valueOfPhoto: "Created by You", image: "allBooks")
        ],
        [AlbumsModel(mainTitle: "People", valueOfPhoto: String(Int.random(in: 1...30)), image: "allBooks"),
         AlbumsModel(mainTitle: "Places", valueOfPhoto: String(Int.random(in: 4000...10000)), image: "allBooks"),
        ],
        [AlbumsModel(mainTitle: "Book Six", valueOfPhoto: "Description of book six", image: "book6", numberOfItem: 6),
         AlbumsModel(mainTitle: "Book Seven", valueOfPhoto: "Description of book seven", image: "book7", numberOfItem: 7),
         AlbumsModel(mainTitle: "Book Eight", valueOfPhoto: "Description of book eight", image: "book8", numberOfItem: 8),
         AlbumsModel(mainTitle: "Book Nine", valueOfPhoto: "Description of book nine", image: "book9", numberOfItem: 9),
         AlbumsModel(mainTitle: "Book Ten", valueOfPhoto: "Description of book ten", image: "book10", numberOfItem: 10),
         AlbumsModel(mainTitle: "Book Eleven", valueOfPhoto: "Description of book eleven", image: "book11", numberOfItem: 11),
         AlbumsModel(mainTitle: "Book Twelve", valueOfPhoto: "Description of book twelve", image: "book12", numberOfItem: 12),
         AlbumsModel(mainTitle: "Book Thirteen", valueOfPhoto: "Description of book thirteen", image: "book13", numberOfItem: 13),
         AlbumsModel(mainTitle: "Book Fourteen", valueOfPhoto: "Description of book fourteen", image: "book14", numberOfItem: 14)
        ],
        [AlbumsModel(mainTitle: "Book Six", valueOfPhoto: "Description of book six", image: "book6", numberOfItem: 6),
         AlbumsModel(mainTitle: "Book Seven", valueOfPhoto: "Description of book seven", image: "book7", numberOfItem: 7),
         AlbumsModel(mainTitle: "Book Eight", valueOfPhoto: "Description of book eight", image: "book8", numberOfItem: 8),
         AlbumsModel(mainTitle: "Book Nine", valueOfPhoto: "Description of book nine", image: "book9", numberOfItem: 9),
         AlbumsModel(mainTitle: "Book Ten", valueOfPhoto: "Description of book ten", image: "book10", numberOfItem: 10),
         AlbumsModel(mainTitle: "Book Eleven", valueOfPhoto: "Description of book eleven", image: "book11", numberOfItem: 11),
         AlbumsModel(mainTitle: "Book Twelve", valueOfPhoto: "Description of book twelve", image: "book12", numberOfItem: 12),
         AlbumsModel(mainTitle: "Book Thirteen", valueOfPhoto: "Description of book thirteen", image: "book13", numberOfItem: 13),
         AlbumsModel(mainTitle: "Book Fourteen", valueOfPhoto: "Description of book fourteen", image: "book14", numberOfItem: 14)
        ]
    ]
}
