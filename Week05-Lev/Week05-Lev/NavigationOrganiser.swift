//
//  NavigationOrganiser.swift
//  Week05-Lev
//
//  Created by Levitia on 04/03/2023.
//

import Foundation
import SwiftUI

struct NavigationOrganiserView: View {
    var body: some View {
        
                Text("Navigation")
            }
}
        
        
        struct Topic: Identifiable, Hashable {
            var id : UUID = UUID()
            var title : String
            var image : String
            var destination : Destination
            //}
            //
            enum Destination: String, CaseIterable {
                case familyView
                case foodView
                case travelView
                
                //let names = ["Family", "Friends", "Food", "Travel", "Pets"]
                @ViewBuilder
                static func view(forSelection selection: Destination) -> some View {
                    switch selection {
                    case .familyView:
                        familyListView()
                    case .travelView:
                        travelListView()
                    case .foodView:
                        foodListView()
                    }
                }
            }
            
            
            struct TopicData {
                static var homeContent = [
                    Topic(
                        title: "Family",
                        image: "family",
                        destination: .familyView
                    ),
                    Topic(
                        title: "Travel",
                        image: "travel",
                        destination: .travelView
                    ),
                    Topic(
                        title: "Food",
                        image: "food",
                        destination: .foodView
                    ),
                ]
            }
        }
    


//


//struct TopicList: View {
//
//    var contentSource: [Topic]
//
//    var body: some View {
//        Section {
//            List {
//                ForEach(contentSource) { row in
//                    NavigationLink(
//                        destination: Destination.view(forSelection: row.destination), label: {
//                            TopicRowView(title: row.title, description: row.description, systemIcon: row.systemSymbol)
//                        })
//                        .fixedSize(horizontal: false, vertical: true)
//                        .listRowInsets(.init(top: 15, leading: 15, bottom: 15, trailing: 15))
//
//                }
//            }
//            .listStyle(InsetGroupedListStyle())
//            .navigationTitle("Animating Shapes")
//
//        }
//        .safeAreaInset(edge: .top, spacing: 0) {
//            Color.clear.frame(height: 15)
//        }
//    }
//
//}
//
//struct TopicList_Previews: PreviewProvider {
//    static var previews: some View {
//        TopicList(contentSource: TopicData.homeContent)
//    }
//}
//
//struct NavigationOrganiser_View: PreviewProvider {
//    static var previews: some View {
//        NavigationOrganiser()
//    }
//}
