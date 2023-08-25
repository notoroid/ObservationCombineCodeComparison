//
//  TagCollectionByObservation.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/23.
//

import Observation

@Observable class TagCollectionByObservation {
    var collection: [Tag] = .defaultTags()
    var collectionCount: Int { collection.count }
}
