//
//  Tag.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/23.
//

import Foundation

struct Tag: Identifiable {
    let name: String
    let value: Int
    var id: Int { value }
}

extension Array<Tag> {
    static func defaultTags() -> [Tag] {
        [.init(name: "Tag1", value: 1), .init(name: "Tag2", value: 2), .init(name: "Tag3", value: 3)]
    }
}
