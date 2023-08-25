//
//  ContentViewByObservation.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/23.
//

import SwiftUI

struct ContentViewByObservationFromParameter: View {
    var tagCollection: TagCollectionByObservation
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

struct ContentViewByObservationFromEmvironment: View {
    @Environment(TagCollectionByObservation.self) var tagCollection: TagCollectionByObservation
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


struct ContentViewByObservationDependOnViewLifecycle: View {
    var tagCollection: TagCollectionByObservation = .init()
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


//struct ContentViewByObservation: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}


//#Preview {
//    ContentView()
//}
