//
//  TagCollectionByCombine.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/23.
//

import Foundation

class TagCollectionByCombine: ObservableObject {
    @Published var collection: [Tag] = .defaultTags()
    var collectionCount: Int { collection.count }
}
