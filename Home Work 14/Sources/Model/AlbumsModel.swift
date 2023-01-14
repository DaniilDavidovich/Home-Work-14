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
    var image: String?
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
        [AlbumsModel(mainTitle: "Family", valueOfPhoto: "Created by You", image: "Family"),
         AlbumsModel(mainTitle: "Holidays", valueOfPhoto: "Created by Maxim", image: "Holidays"),
         AlbumsModel(mainTitle: "Friends", valueOfPhoto: "Created by You", image: "Friends")
        ],
        [AlbumsModel(mainTitle: "People", valueOfPhoto: String(Int.random(in: 4...30)), image: "allBooks"),
         AlbumsModel(mainTitle: "Places", valueOfPhoto: String(Int.random(in: 500...4000)), image: "Places"),
        ],
        [AlbumsModel(mainTitle: "Videos", valueOfPhoto: nil, image: "video", numberOfItem: nil),
         AlbumsModel(mainTitle: "Selfies", valueOfPhoto: nil, image: "person.crop.square", numberOfItem: nil),
         AlbumsModel(mainTitle: "Live Photo", valueOfPhoto: nil, image: "livephoto", numberOfItem: nil),
         AlbumsModel(mainTitle: "Portrait", valueOfPhoto: nil, image: "cube", numberOfItem: nil),
         AlbumsModel(mainTitle: "Long Exposure", valueOfPhoto: nil, image: "livephoto", numberOfItem: nil),
         AlbumsModel(mainTitle: "Panoramas", valueOfPhoto: nil, image: "pano", numberOfItem: nil),
         AlbumsModel(mainTitle: "Slo-mo", valueOfPhoto: nil, image: "slowmo", numberOfItem: nil),
         AlbumsModel(mainTitle: "Bursts", valueOfPhoto: nil, image: "square.stack.3d.down.right", numberOfItem: nil),
         AlbumsModel(mainTitle: "Screenshots", valueOfPhoto: nil, image: "camera.viewfinder", numberOfItem: nil),
         AlbumsModel(mainTitle: "Screen Recordings", valueOfPhoto: nil, image: "record.circle", numberOfItem: nil),
         AlbumsModel(mainTitle: "Animated", valueOfPhoto: nil, image: "square.stack.3d.forward.dottedline", numberOfItem: nil)
        ],
        [AlbumsModel(mainTitle: "Imports", valueOfPhoto: nil, image: "square.and.arrow.down", numberOfItem: nil),
         AlbumsModel(mainTitle: "Duplicates", valueOfPhoto: nil, image: "rectangle.on.rectangle", numberOfItem: nil),
         AlbumsModel(mainTitle: "Recently Deleted", valueOfPhoto: nil, image: "trash", numberOfItem: nil),
         ]
        ]
        
        static let people: [String] = ["People1","People2","People3","People4"]
    
}
