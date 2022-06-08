//
//  AboutMeViewController.swift
//  2.4.2
//
//  Created by Александр on 01.06.2022.
//

import UIKit

class AboutMeViewController: LogInViewController {

    var  user: User!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "photo" {
            guard let myPhotoVC = segue.destination as? MyPhotoViewController else { return }
            myPhotoVC.user = user
        } else if segue.identifier == "books" {
            guard let books = segue.destination as? BooksViewController else { return }
            books.user = user
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
