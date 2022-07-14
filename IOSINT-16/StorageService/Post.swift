//
//  Post.swift
//  StorageService
//
//  Created by Михаил Апанасенко on 14.07.22.
//

import Foundation

public struct Post {
    public let title: String
    public let author: String

    public init (title: String, author: String) {
        self.title = title
        self.author = author
    }
}
