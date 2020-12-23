//
//  ViewController.swift
//  swift_02_1222
//
//  Created by peng on 2020/12/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


class MedicItem {
    var name:String
    init(name:String) {
        self.name = name
    }
    
}

class Movie: MedicItem {
    var director: String
    init(name:String, director:String) {
        self.director = director
        super.init(name: name)
    }
    
}

class Song: MedicItem {
    var artist:String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
    
}
