//
//  ContentViewByCombine.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/23.
//

import SwiftUI

struct ContentViewByCombineFromParameter: View {
    @ObservedObject var tagCollection: TagCollectionByCombine
    var body: some View {
        VStack {
            Button {
                let newTagValue = tagCollection.collectionCount + 1
                tagCollection.collection.append(
                    .init(name: "Tag\(newTagValue)", value: newTagValue)
                )
            } label: {
                Text("Add")
            }
            Text("Tag number:\(tagCollection.collectionCount)")
            
            List(tagCollection.collection) { tag in
                Label(
                    title: { Text("\(tag.name)") },
                    icon: { Image(systemName: "tag.fill") }
                )
            }
            .listStyle(.plain)
        }
        .padding()
    }
}

struct ContentViewByCombineFromEmvironment: View {
    @EnvironmentObject var tagCollection: TagCollectionByCombine
    var body: some View {
        VStack {
            Button {
                let newTagValue = tagCollection.collectionCount + 1
                tagCollection.collection.append(
                    .init(name: "Tag\(newTagValue)", value: newTagValue)
                )
            } label: {
                Text("Add")
            }
            Text("Tag number:\(tagCollection.collectionCount)")
            
            List(tagCollection.collection) { tag in
                Label(
                    title: { Text("\(tag.name)") },
                    icon: { Image(systemName: "tag.fill") }
                )
            }
            .listStyle(.plain)
        }
        .padding()
    }
}


struct ContentViewDependOnViewLifecycle: View {
    @StateObject var tagCollection: TagCollectionByCombine = .init()
    var body: some View {
        VStack {
            Button {
                let newTagValue = tagCollection.collectionCount + 1
                tagCollection.collection.append(
                    .init(name: "Tag\(newTagValue)", value: newTagValue)
                )
            } label: {
                Text("Add")
            }
            Text("Tag number:\(tagCollection.collectionCount)")
            
            List(tagCollection.collection) { tag in
                Label(
                    title: { Text("\(tag.name)") },
                    icon: { Image(systemName: "tag.fill") }
                )
            }
            .listStyle(.plain)
        }
        .padding()
    }
}


