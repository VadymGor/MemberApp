//
//  ProfileViewController.swift
//  AppDelegate
//
//  Created by Vadym Horovyi on 15/04/2020.
//  Copyright © 2020 Vadym Horovyi. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let identifire = "PhotoCollectionViewCell"
    // создаем экземпляр класса Gallery
    let photoGallery = PhotoGallery()
    
    let countCells = 3
    let offset: CGFloat = 2.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImage.layer.borderWidth = 3.0
        avatarImage.layer.borderColor = UIColor.lightGray.cgColor
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // регистрируем новую ячейку для collectionView
        collectionView.register(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
    }
    
}

extension ProfileViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // создаем ячейку
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! PhotoCollectionViewCell
        // обращаемся к photoView и меняем картинку
        cell.photoView.image = photoGallery.images[indexPath.item]
        return cell
    }
    
        // задаем размеры ячейки
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCell = widthCell
        
        let spacing = CGFloat((countCells + 1)) * offset / CGFloat(countCells) 
        return CGSize(width: widthCell, height: heightCell - (offset * 2))
        
        
    }
    
}
