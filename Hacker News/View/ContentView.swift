//
//  ContentView.swift
//  Hacker News
//
//  Created by Prosper Evergreen on 11.10.2020.
//

import SwiftUI


struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                            Text(String(post.points))
                            Text(post.title)
                        })
                    })
            }
            .navigationTitle("Hacker News")
//            .navigationBarItems(trailing:
//                            Button("Refresh") {
//                                self.networkManager.fetchData()
//                            }
//                        )
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//
//
//let posts = [
//    Post(id: "1", title: "Hello1"),
//    Post(id: "2", title: "Hello2"),
//    Post(id: "3", title: "Hello3"),
//    Post(id: "4", title: "Hello4"),
//]
