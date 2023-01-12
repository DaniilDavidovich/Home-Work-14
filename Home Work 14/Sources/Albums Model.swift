//
//  Albums Model.swift
//  Home Work 14
//
//  Created by Daniil Davidovich on 12.01.23.
//

import Foundation

struct AlbumsModel: Hashable {
    var mainTitle: String?
    var description: String?
    var image: String
    var numberOfItem: Int?
}

extension AlbumsModel {
    static let modelsArray = [
        [AlbumsModel(mainTitle: "Featured Collection", description: "Biography", image: "allBooks"),
         AlbumsModel(mainTitle: "Featured Collection", description: "Short Stories", image: "allBooks"),
         AlbumsModel(mainTitle: "Featured Collection", description: "History", image: "allBooks"),
         AlbumsModel(mainTitle: "Featured Collection", description: "Philosophy", image: "allBooks"),
         AlbumsModel(mainTitle: "Featured Collection", description: "Poetry", image: "allBooks")
        ],
        [AlbumsModel(mainTitle: nil, description: nil, image: "book1"),
         AlbumsModel(mainTitle: nil, description: nil, image: "book2"),
         AlbumsModel(mainTitle: nil, description: nil, image: "book3"),
         AlbumsModel(mainTitle: nil, description: nil, image: "book4"),
         AlbumsModel(mainTitle: nil, description: nil, image: "book5")
        ],
        [AlbumsModel(mainTitle: "Book Six", description: "Description of book six", image: "book6", numberOfItem: 6),
         AlbumsModel(mainTitle: "Book Seven", description: "Description of book seven", image: "book7", numberOfItem: 7),
         AlbumsModel(mainTitle: "Book Eight", description: "Description of book eight", image: "book8", numberOfItem: 8),
         AlbumsModel(mainTitle: "Book Nine", description: "Description of book nine", image: "book9", numberOfItem: 9),
         AlbumsModel(mainTitle: "Book Ten", description: "Description of book ten", image: "book10", numberOfItem: 10),
         AlbumsModel(mainTitle: "Book Eleven", description: "Description of book eleven", image: "book11", numberOfItem: 11),
         AlbumsModel(mainTitle: "Book Twelve", description: "Description of book twelve", image: "book12", numberOfItem: 12),
         AlbumsModel(mainTitle: "Book Thirteen", description: "Description of book thirteen", image: "book13", numberOfItem: 13),
         AlbumsModel(mainTitle: "Book Fourteen", description: "Description of book fourteen", image: "book14", numberOfItem: 14)
        ]
    ]
}
