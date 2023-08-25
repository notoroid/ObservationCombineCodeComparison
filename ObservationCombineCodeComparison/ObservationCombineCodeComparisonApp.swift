//
//  ObservationCombineCodeComparisonApp.swift
//  ObservationCombineCodeComparison
//
//  Created by 能登 要 on 2023/08/25.
//

import SwiftUI

@main
struct ObservationCombineCodeComparisonApp: App {
    @StateObject var tagCollectionByCombine: TagCollectionByCombine = .init()
    var tagCollectionByObservation:TagCollectionByObservation = .init()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView(content: {
                    VStack {
                        Text("Tag number:\(tagCollectionByCombine.collectionCount) - Combine")
                        List {
                            NavigationLink(destination:
                                ContentViewByCombineFromParameter(tagCollection: tagCollectionByCombine)
                                    .navigationTitle(Text("from parameter"))
                            ) {
                                Text("Using Combine,from parameter")
                            }
                            NavigationLink(destination:
                                ContentViewByCombineFromEmvironment()
                                    .navigationTitle(Text("from emvironment"))
                                    .environmentObject(tagCollectionByCombine)
                            ) {
                                Text("Using Combine,from emvironment")
                            }
                            NavigationLink(destination:
                                ContentViewDependOnViewLifecycle()
                                    .navigationTitle(Text("Depend on view lifecycle."))
                            ) {
                                Text("Using Combine,Depend on view lifecycle.")
                            }
                        }
                    }
                })
                .tabItem {
                    Label(
                        title: { Text("Combine") },
                        icon: { Image(systemName: "19.circle") }
                    )
                }
                
                NavigationView(content: {
                    VStack {
                        Text("Tag number:\(tagCollectionByObservation.collectionCount) - Observation")
                        List {
                            NavigationLink(destination:
                                ContentViewByObservationFromParameter(tagCollection: tagCollectionByObservation)
                                    .navigationTitle(Text("from parameter"))
                            ) {
                                Text("Using Observation,from parameter")
                            }
                            
                            NavigationLink(destination:
                                ContentViewByObservationFromEmvironment()
                                    .navigationTitle(Text("from emvironment"))
                                    .environment(tagCollectionByObservation)
                            ) {
                                Text("Using Observation,from emvironment")
                            }
                            
                            NavigationLink(destination:
                                ContentViewByObservationDependOnViewLifecycle()
                                    .navigationTitle(Text("Depend on view lifecycle."))
                            ) {
                                Text("Using Observation,Depend on view lifecycle.")
                            }
                        }
                    }
                })
                .tabItem {
                    Label(
                        title: { Text("Observation") },
                        icon: { Image(systemName: "23.circle") }
                    )
                }
            }
        }
    }
}
