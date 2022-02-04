//
//  RedditModel.swift
//  AppNationRedditProject
//
//  Created by Muhammed YILDIRIM  on 3.02.2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reddit = try? newJSONDecoder().decode(Reddit.self, from: jsonData)

import Foundation


// MARK: - Reddit
struct Reddit: Codable {
    let kind: String?
    let data: RedditData?
}

// MARK: - RedditData
struct RedditData: Codable {
    let children: [Child]?

    enum CodingKeys: String, CodingKey {
        case children
    }
}

// MARK: - Child
struct Child: Codable {
    let data: ChildData?
}

// MARK: - ChildData
struct ChildData: Codable {
    let selftext: String?
    let title: String?
    let thumbnail: String?

    enum CodingKeys: String, CodingKey {
        case selftext, title, thumbnail
    }
}



