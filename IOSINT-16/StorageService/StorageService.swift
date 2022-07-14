//
//  StorageService.swift
//  StorageService
//
//  Created by Михаил Апанасенко on 14.07.22.
//

import Foundation

public class StorageService {

    public init () { }

    public func getPost() -> Post {
        return Post(
            title: "Some title",
            author: "Some author"
        )
    }
}
