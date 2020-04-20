//
//  PhotoGallery.swift
//  AppDelegate
//
//  Created by Vadym Horovyi on 20/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import Foundation
import UIKit

class PhotoGallery {
//    массив с картинками
    var images = [UIImage]()
    
    init() {
        setupGallery()
    }
//    заполнение массива
    func setupGallery() {
        for i in 0...7 {
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
    }
}
