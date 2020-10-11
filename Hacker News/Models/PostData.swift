//
//  PostData.swift
//  Hacker News
//
//  Created by Prosper Evergreen on 11.10.2020.
//
// Data model to be used
import Foundation

struct Result: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    var id: String{
        return objectID
    }
}
