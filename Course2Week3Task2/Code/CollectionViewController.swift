//
//  CollectionViewController.swift
//  Course2Week3Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    @IBOutlet var photosCollectionView: UICollectionView!
    
    private let dataSource: CollectionViewDataSource = CollectionViewDataSource()
    private let layout: CustomFlowLayout = CustomFlowLayout()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photosCollectionView.register(
            UINib(nibName:"PhotoCollectionViewCell", bundle: nil),
            forCellWithReuseIdentifier: "PhotoCollectionViewCell"
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let layout = CustomFlowLayout()
        self.photosCollectionView.delegate = self.layout
        self.photosCollectionView.dataSource = self.dataSource
        self.photosCollectionView.collectionViewLayout = layout
    }
}
