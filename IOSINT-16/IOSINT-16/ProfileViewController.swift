//
//  ProfileViewController.swift
//  IOSINT-16
//
//  Created by Михаил Апанасенко on 14.07.22.
//

import UIKit
import StorageService

class ProfileViewController: UIViewController {

    let label = UILabel(frame: .zero)

    var isDebug: Bool {
        if Bundle.main.infoDictionary?["IS_DEBUG"] as! String == "YES" {
            return true
        } else {
            return false
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - Task 1
        let storageService = StorageService()
        let post = storageService.getPost()

        print("Author is: \(post.author), title is: \(post.title)")

        let post2 = Post(title: "Another some title", author: "Another some author")

        print("Author is: \(post2.author), title is: \(post2.title)")


        //MARK: - Task 2
        view.backgroundColor = isDebug ? .green : .red
        view.addSubview(label)
        label.text = isDebug ? "THIS IS DEBUG VERSION" : "THIS IS RELEASE VERSION"
        label.translatesAutoresizingMaskIntoConstraints = false
        [
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ].forEach { $0.isActive = true }


    }
}
